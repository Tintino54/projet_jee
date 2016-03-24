package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Campagne;

@Repository
@Transactional
public class CampagneDAO extends BaseDAO<Campagne> {

	final static Logger logger = Logger.getLogger(CampagneDAO.class);

	public List<Campagne> rechercherCampagneParId(int id) {
		if (getEntityManager() == null) {
			logger.info("entityManager null");
			return null;
		} else {
			TypedQuery<Campagne> query = getEntityManager().createNamedQuery("rechercherCampagneParId", Campagne.class);
			query.setParameter("id", id);
			return query.getResultList();
		}
	}

	public List<Campagne> rechercherCampagne() {
		if (getEntityManager() == null) {
			logger.info("entityManager null");
			return null;
		} else {
			TypedQuery<Campagne> query = getEntityManager().createNamedQuery("rechercherCampagne", Campagne.class);
			return query.getResultList();
		}
	}
	
	public void ajouterCampagne(Campagne campagne)
	{
		try {
			insert(campagne);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
