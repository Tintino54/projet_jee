package j2ee.projet.dao;

import java.io.Serializable;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.log4j.Logger;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.REQUIRED)
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = false)
public class BaseDAO<T extends Serializable> {
	final static Logger logger = Logger.getLogger(BaseDAO.class);
	
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return entityManager;
	}

	@PersistenceContext
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public void insert(T object){
		logger.info("Persist entity : "+object.getClass());
		EntityManager entityManager = getEntityManager();
		entityManager.persist(object);
	}
}
