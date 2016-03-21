package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Commentaire;

public class CommentaireDAO extends BaseDAO<Commentaire> {
	
	final static Logger logger = Logger.getLogger(CommentaireDAO.class);
	
	public List<String> rechercherCommentairesParCampagne(int id) 
	{
		if (getEntityManager()==null)
			logger.info("entityManager null");
		TypedQuery<String> query = getEntityManager().createNamedQuery("rechercherCommentairesParCampagne",String.class);
		query.setParameter("id_campaign", id);
		return query.getResultList();
	}
}
