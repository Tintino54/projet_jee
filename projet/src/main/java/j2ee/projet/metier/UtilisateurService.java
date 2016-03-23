package j2ee.projet.metier;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import j2ee.projet.dao.UtilisateurDAO;
import j2ee.projet.domaine.Utilisateur;
import j2ee.projet.web.bean.UtilisateurBean;

@Service
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
			uBean.setEmail(res.getMail());
			uBean.setLogin(res.getLogin());
			uBean.setPwd(res.getMdp());
			return uBean;
		}
	}

	public UtilisateurBean getUtilisateur(String mail, String mdp) {
		Utilisateur res = uDao.rechercherUtilisateurParMailEtMdp(mail, mdp);
		UtilisateurBean uBean = new UtilisateurBean();
		uBean.setEmail(res.getMail());
		uBean.setLogin(res.getLogin());
		uBean.setPwd(res.getMdp());
		return uBean;
	}
}
