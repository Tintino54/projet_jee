package j2ee.projet.web.controller;

import org.apache.log4j.Logger;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import j2ee.projet.metier.Identification;
import j2ee.projet.web.bean.UtilisateurBean;

@Controller
public class ConnexionController {
	
	final static Logger logger = Logger.getLogger(ConnexionController.class);

	@RequestMapping(value="/check")
	public String identification(@ModelAttribute UtilisateurBean utilisateurBean, Model model)
	{
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String mail = utilisateurBean.getEmail();
		String mdp = passwordEncoder.encode(utilisateurBean.getPwd());
		logger.info("Connexion de : "+mail+"/"+mdp);
		
		Identification identification = new Identification();
		identification.verification(mail, mdp);
		return "Campaign/list";
	}
}
