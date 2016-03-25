package j2ee.projet.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Commentaire;

@Repository
@Transactional
public class CommentaireDAO extends BaseDAO<Commentaire> {

	final static Logger logger = Logger.getLogger(CommentaireDAO.class);

	@SuppressWarnings("unchecked")
	public List<Commentaire> rechercherCommentairesParCampagne(int id) {
		if (getSessionFactory() == null) {
			logger.info("sessionFactory null");
			return null;
		} else {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			Query query = session.getNamedQuery("rechercherCommentairesParCampagne");
			query.setParameter("id_campaign", id);
			List<Commentaire> res = query.list();
			tx.commit();
			return res;
		}
	}

	public void ajouterCommentaire(Commentaire com) {
		insert(com);
	}
}
