package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Utilisateur;

@Repository
@Transactional
public class UtilisateurDAO extends BaseDAO<Utilisateur> {

	final static Logger logger = Logger.getLogger(UtilisateurDAO.class);

	public Utilisateur rechercherUtilisateurParMailEtMdp(String mail, String mdp) {
		if (getEntityManager() == null) {
			logger.info("entityManager null");
			return null;
		} else {
			TypedQuery<Utilisateur> query = getEntityManager().createNamedQuery("rechercherUtilisateurParMailEtMdp",
					Utilisateur.class);
			query.setParameter("mail", mail);
			query.setParameter("mdp", mdp);
			List<Utilisateur> list = query.getResultList();
			if (list.size() == 0)
				return null;
			else
				return list.get(0);
		}
	}

	public List<Utilisateur> rechercherUtilisateurParId(int idUser) {
		if (getEntityManager() == null) {
			logger.info("entityManager null");
			return null;
		} else {
			TypedQuery<Utilisateur> query = getEntityManager().createNamedQuery("rechercherUtilisateurParId",
					Utilisateur.class);
			query.setParameter("id", idUser);
			return query.getResultList();
		}
	}
	
	public Utilisateur rechercherUtilisateurParLogin(String login) {
		if (getEntityManager() == null) {
			logger.info("entityManager null");
			return null;
		} else {
			TypedQuery<Utilisateur> query = getEntityManager().createNamedQuery("rechercherUtilisateurParLogin",
					Utilisateur.class);
			query.setParameter("login", login);
			List<Utilisateur> list = query.getResultList();
			if (list.size() == 0)
				return null;
			else
				return list.get(0);
		}
	}
	
	public void ajouterUtilisateur(Utilisateur utilisateur)
	{
		try {
			insert(utilisateur);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
