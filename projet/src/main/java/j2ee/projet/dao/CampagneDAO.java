package j2ee.projet.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Campagne;

@Repository
@Transactional
public class CampagneDAO extends BaseDAO<Campagne> {

	final static Logger logger = Logger.getLogger(CampagneDAO.class);

	@SuppressWarnings("unchecked")
	public List<Campagne> rechercherCampagneParId(int id) {
		if (getSessionFactory() == null) {
			logger.info("sessionFactory null");
			return null;
		} else {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			Query query = getSession().getNamedQuery("rechercherCampagneParId");
			query.setParameter("id", id);
			List<Campagne> res = query.list();
			tx.commit();
			return res;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Campagne> rechercherCampagne() {
		if (getSessionFactory() == null) {
			logger.info("entityManager null");
			return null;
		} else {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			Query query = session.getNamedQuery("rechercherCampagne");
			List<Campagne> res = query.list();
			tx.commit();
			return res;
		}
	}

	public void ajouterCampagne(Campagne campagne) {
		logger.info("Avant insert : "+rechercherCampagne().size());
		insert(campagne);
		logger.info("Apres insert : "+rechercherCampagne().size());
	}
}
