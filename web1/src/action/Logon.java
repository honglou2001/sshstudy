package action;

import com.opensymphony.xwork2.ActionSupport;

public class Logon extends ActionSupport {

    /**
     * 
     */
    private static final long serialVersionUID = -9039794122089833258L;

    public String execute() throws Exception {

        if (isInvalid(getUsername()))
            return INPUT;
        if (isInvalid(getPassword()))
            return INPUT;
        return SUCCESS;
    }

    private boolean isInvalid(String value) {
        return (value == null || value.length() == 0);
    }

    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}