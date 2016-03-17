package j2ee.projet.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import j2ee.projet.dao.UtilisateurDAO;

public class Identification {
	
	@Autowired
	UtilisateurDAO uDao;
	
	public void verification(String login, String mdp) {
		List<String> res=uDao.rechercherUtilisateur();
		System.out.println(res!=null);
	}
}
