package domain;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import java.util.UUID;

public class Test1 {

	public static void main(String[] args) {
		Configuration config = new Configuration().configure();	//读取hibernate.cfg.xml
		SessionFactory factory = config.buildSessionFactory();	//创建Session工厂
		Session session = factory.openSession();	//创建session
		Transaction t = session.beginTransaction();	//因为hibernate不是自动提交，因此需要创建事务
		User p = new User();	//创建POJO
		p.setName("xiazdong");
		p.setId( UUID.randomUUID().toString());
		session.save(p);	//POJO-->PO
		t.commit();	//提交事务
	}

}
