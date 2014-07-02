package service;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Collection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import domain.User;
import dao.UserDaoIml;

public class UserServiceImpl extends ActionSupport implements  UserService   {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserDaoIml daoUser = new UserDaoIml();
	private User user;
	private String fid;
	
	private UserDaoIml userDao;

	public void setUserDao(UserDaoIml ruserDao) {
		this.userDao = ruserDao;
	}

	public UserDaoIml getUserDao() {
		return userDao;
	}
	
	private Collection<User> users;
			
	public Collection<User> getUsers() {
	    return users;
	}

	public void setUsers(Collection<User> users) {
	     this.users = users;
	}
	
	public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    public void setFid(String fid) {
        this.fid = fid;
    }
    
	public String getFid() {
        return fid;
    }
	
	@Override
	public String ListUsers() {
		users = daoUser.getAll();
	    return SUCCESS;
	}
	
	@Override
	public String GetOneUser() {
		user = daoUser.find(fid);
	    return SUCCESS;
	}
	@Override
	public String AddUser() {
			
	  if(user.getId() == null || user.getId().length() <= 0){		
		  userDao.Add(user);
	  }else
	  {
		  daoUser.Update(user);
	  }
	  return SUCCESS;
	}
	@Override
	public String DeleteUser() {
		daoUser.Delete(fid);
	    return SUCCESS;
	}
}
