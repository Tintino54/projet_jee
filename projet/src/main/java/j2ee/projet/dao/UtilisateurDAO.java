package j2ee.projet.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Utilisateur;

@Repository("utilisateurDao")
@Transactional(propagation = Propagation.REQUIRED)
public class UtilisateurDAO {
	@PersistenceContext
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return entityManager;
	}
	
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
		 
	public void insert(Utilisateur user) {
		entityManager.persist(user);
	}
}
