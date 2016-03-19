package j2ee.projet.metier;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import j2ee.projet.dao.UtilisateurDAO;

@Service
public class Identification {
	
	@Autowired
	UtilisateurDAO uDao;
	
	final static Logger logger = Logger.getLogger(Identification.class);
	
	public void verification(String mail, String mdp) {
		if (uDao==null)
			logger.info("DAO null");
		List<String> res=uDao.rechercherUtilisateurParMailEtMdp(mail, mdp);
		if (res == null)
			logger.info("Resultat de la requete rechercherUtilisateurParMailEtMdp == null");
		else
			logger.info("Resultat de la requete rechercherUtilisateurParMailEtMdp non null");
	}
}
