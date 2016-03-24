package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Commentaire;

@Repository
@Transactional
public class CommentaireDAO extends BaseDAO<Commentaire> {
	
	final static Logger logger = Logger.getLogger(CommentaireDAO.class);
	
	public List<Commentaire> rechercherCommentairesParCampagne(int id) 
	{
		if (getEntityManager()==null)
			logger.info("entityManager null");
		TypedQuery<Commentaire> query = getEntityManager().createNamedQuery("rechercherCommentairesParCampagne",Commentaire.class);
		query.setParameter("id_campaign", id);
		return query.getResultList();
	}
	
	public void ajouterCommentaire(Commentaire com)
	{
		try {
			insert(com);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
