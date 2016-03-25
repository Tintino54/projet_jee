package j2ee.projet.dao;

import java.io.Serializable;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseDAO<T extends Serializable> {
	final static Logger logger = Logger.getLogger(BaseDAO.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	public Session getSession()
	{
		return this.sessionFactory.getCurrentSession();
	}
	
	public void insert(T object) {
		logger.info("Persist entity : " + object.getClass());
		Session session = getSession();
		Transaction tx = session.beginTransaction();
        session.persist(object);
        tx.commit();
	}
}
