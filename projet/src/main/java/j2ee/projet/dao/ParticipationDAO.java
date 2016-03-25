package j2ee.projet.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import j2ee.projet.domaine.Participation;

@Repository
public class ParticipationDAO extends BaseDAO<Participation> {
	final static Logger logger = Logger.getLogger(CommentaireDAO.class);

	@SuppressWarnings("unchecked")
	public List<Participation> rechercherParticipationParIdProjet(int idprojet) {
		if (getSessionFactory() == null) {
			logger.info("sessionFactory null");
			return null;
		} else {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			Query query = session.getNamedQuery("rechercherParticipationParIdProjet");
			query.setParameter("idprojet", idprojet);
			List<Participation> res = query.list();
			tx.commit();
			return res;
		}
	}
	
	public void ajouterParticipation(Participation participation) {
		insert(participation);
	}
}
