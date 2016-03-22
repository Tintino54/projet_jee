package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Utilisateur;
import j2ee.projet.web.bean.UtilisateurBean;

@Repository
@Transactional
public class UtilisateurDAO extends BaseDAO<Utilisateur> {

	final static Logger logger = Logger.getLogger(UtilisateurDAO.class);

	public List<String> rechercherUtilisateurParMailEtMdp(String mail, String mdp) {
		if (getEntityManager() == null) {
			logger.info("entityManager null");
			return null;
		} else {
			TypedQuery<String> query = getEntityManager().createNamedQuery("rechercherUtilisateurParMailEtMdp",
					String.class);
			query.setParameter("mail", mail);
			query.setParameter("mdp", mdp);
			return query.getResultList();
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
	
	public void ajouterUtilisateur(UtilisateurBean uBean)
	{
		Utilisateur utilisateur = new Utilisateur();
		utilisateur.setLogin(uBean.getLogin());
		utilisateur.setMail(uBean.getEmail());
		utilisateur.setMdp(uBean.getPwd());
		utilisateur.setNom(uBean.getNom());
		utilisateur.setPrenom(uBean.getPrenom());
		utilisateur.setSexe(uBean.getSexe());
		utilisateur.setDateNaiss(uBean.getDateNaiss());
		
		try {
			insert(utilisateur);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
