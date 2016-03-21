package j2ee.projet.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class BaseDAO<T> {
	
	@PersistenceContext(unitName = "entityManagerFactory", type=PersistenceContextType.EXTENDED)
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return entityManager;
	}
	
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
		 
	public void insert(T object) {
		entityManager.persist(object);
	}
}
