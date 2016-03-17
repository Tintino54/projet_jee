package j2ee.projet.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import j2ee.projet.web.bean.UtilisateurBean;

@Controller
public class ConnexionController {
	
	final static Logger logger = Logger.getLogger(ConnexionController.class);

	@RequestMapping(value="/check")
	public String identification(@ModelAttribute UtilisateurBean utilisateurBean, Model model)
	{
		logger.info("Connexion de : "+utilisateurBean.getMail()+"/"+utilisateurBean.getMdp());
		model.addAttribute(utilisateurBean);
		return "list";
	}
}
