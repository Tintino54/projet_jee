package j2ee.projet.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Utilisateur;

@Repository
@Transactional
public class UtilisateurDAO extends BaseDAO<Utilisateur> {

	final static Logger logger = Logger.getLogger(UtilisateurDAO.class);

	public Utilisateur rechercherUtilisateurParMailEtMdp(String mail, String mdp) {
		if (getSessionFactory() == null) {
			logger.info("sessionFactory null");
			return null;
		} else {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			Query query = session.getNamedQuery("rechercherUtilisateurParMailEtMdp");
			query.setParameter("mail", mail);
			query.setParameter("mdp", mdp);
			Utilisateur res = (Utilisateur) query.uniqueResult();
			tx.commit();
			return res;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Utilisateur> rechercherUtilisateurParId(int idUser) {
		if (getSessionFactory() == null) {
			logger.info("sessionFactory null");
			return null;
		} else {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			Query query = session.getNamedQuery("rechercherUtilisateurParId");
			query.setParameter("id", idUser);
			List<Utilisateur> res = query.list();
			tx.commit();
			return res;
		}
	}

	public Utilisateur rechercherUtilisateurParLogin(String login) {
		if (getSessionFactory() == null) {
			logger.info("sessionFactory null");
			return null;
		} else {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			Query query = session.getNamedQuery("rechercherUtilisateurParLogin");
			query.setParameter("login", login);
			Utilisateur res = (Utilisateur) query.uniqueResult();
			tx.commit();
			return res;
		}
	}

	public void ajouterUtilisateur(Utilisateur utilisateur) {
		insert(utilisateur);
	}
}
