package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Participation;

@Repository
@Transactional
public class ParticipationDAO extends BaseDAO<Participation> {
final static Logger logger = Logger.getLogger(CommentaireDAO.class);
	
	public List<Participation> rechercherParticipationParIdProjet(int idprojet) 
	{
		if (getEntityManager()==null)
			logger.info("entityManager null");
		TypedQuery<Participation> query = getEntityManager().createNamedQuery("rechercherParticipationParIdProjet",Participation.class);
		query.setParameter("idprojet", idprojet);
		return query.getResultList();
	}
}
