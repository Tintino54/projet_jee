package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Campaign;


@Repository
@Transactional
public class CampagneDAO extends BaseDAO<Campaign>{
	
	final static Logger logger = Logger.getLogger(CampagneDAO.class);
	
	public List<Campaign> rechercherCampagneParId(int id)
	{
		if (getEntityManager()==null)
			logger.info("entityManager null");
		TypedQuery<Campaign> query = getEntityManager().createNamedQuery("rechercherCampagneParId",Campaign.class);
		query.setParameter("id", id);
		return query.getResultList();
	}


}
