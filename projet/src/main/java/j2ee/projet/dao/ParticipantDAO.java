package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Participant;

@Repository
@Transactional
public class ParticipantDAO extends BaseDAO<Participant> {
final static Logger logger = Logger.getLogger(CommentaireDAO.class);
	
	public List<Participant> listingParticipations(int idprojet) 
	{
		if (getEntityManager()==null)
			logger.info("entityManager null");
		TypedQuery<Participant> query = getEntityManager().createNamedQuery("listingParticipations",Participant.class);
		query.setParameter("idprojet", idprojet);
		return query.getResultList();
	}
}
