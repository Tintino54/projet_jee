package j2ee.projet.metier;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.dao.UtilisateurDAO;
import j2ee.projet.domaine.Utilisateur;
import j2ee.projet.web.bean.UtilisateurBean;

@Service
@Transactional
public class UtilisateurService {

	@Autowired
	UtilisateurDAO uDao;

	final static Logger logger = Logger.getLogger(UtilisateurService.class);

	public UtilisateurBean verification(String mail, String mdp) {
		if (uDao == null)
			logger.info("DAO null");
		Utilisateur res = uDao.rechercherUtilisateurParMailEtMdp(mail, mdp);
		if (res == null) {
			logger.info("Resultat de la requete rechercherUtilisateurParMailEtMdp == null");
			return null;
		} else {
			logger.info("Resultat de la requete rechercherUtilisateurParMailEtMdp non null");
			UtilisateurBean uBean = new UtilisateurBean();
			uBean.setId(res.getId());
			uBean.setMail(res.getMail());
			uBean.setLogin(res.getLogin());
			uBean.setMdp(res.getMdp());
			return uBean;
		}
	}

	public UtilisateurBean rechercherUtilisateurParLogin(String login) {
		Utilisateur user = uDao.rechercherUtilisateurParLogin(login);
		if (user == null) {
			logger.info("Resultat de la requete rechercherUtilisateurParLogin == null");
			return null;
		} else {
			logger.info("Resultat de la requete rechercherUtilisateurParLogin non null");
			UtilisateurBean uBean = new UtilisateurBean();
			uBean.setId(user.getId());
			uBean.setMail(user.getMail());
			uBean.setLogin(user.getLogin());
			uBean.setMdp(user.getMdp());
			return uBean;
		}
	}
	
	public UtilisateurBean rechercherUtilisateurParId(int id) {
		Utilisateur user = uDao.rechercherUtilisateurParId(id);
		if (user == null) {
			logger.info("Resultat de la requete rechercherUtilisateurParId("+id+") == null");
			return null;
		} else {
			logger.info("Resultat de la requete rechercherUtilisateurParId non null");
			UtilisateurBean uBean = new UtilisateurBean();
			uBean.setId(user.getId());
			uBean.setMail(user.getMail());
			uBean.setLogin(user.getLogin());
			uBean.setMdp(user.getMdp());
			return uBean;
		}
	}
	
	public void ajouter(UtilisateurBean user)
	{
		Utilisateur u = new Utilisateur();
		u.setLogin(user.getLogin());
		u.setPrenom(user.getPrenom());
		u.setNom(user.getNom());
		u.setMdp(user.getMdp());
		u.setMail(user.getMail());
		u.setDateNaiss(user.getDateNaiss());
		u.setSexe(user.getSexe());
		uDao.ajouterUtilisateur(u);
	}
}
