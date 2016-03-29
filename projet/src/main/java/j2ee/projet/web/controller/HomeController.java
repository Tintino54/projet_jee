package j2ee.projet.web.controller;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.metier.UtilisateurService;
import j2ee.projet.web.bean.UtilisateurBean;
import j2ee.projet.web.bean.UtilisateurSessionBean;

@Controller
public class HomeController {

	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@Autowired
	UtilisateurService userServ;
	
	@Autowired
	UtilisateurSessionBean user;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(HttpServletResponse response) throws IOException{
		logger.info("Affichage de home.jsp");
		return "Home/home";
	}
	
	@RequestMapping(value="/inscription", method=RequestMethod.GET)
	public ModelAndView inscription(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de inscription");
		ModelAndView modelAndView = new ModelAndView("Home/inscription");
		modelAndView.addObject("user-entity", new UtilisateurBean());
		return modelAndView;
	}

	@RequestMapping(value="/inscription", method=RequestMethod.POST)
	public String inscriptionSubmit(@ModelAttribute UtilisateurBean u,HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de inscription");
		String username = u.getMail();
		
		// Cryptage du mot de passe
		byte[] bytes = u.getMdp().getBytes();

		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < bytes.length; i++) {
			sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
		}
		String mdp = sb.toString();
		u.setMdp(mdp);
		
		userServ.ajouter(u);
		
		logger.info("Inscription de "+username);
		return "redirect:/connexion";
	}
	
	@RequestMapping(value="/principe")
	public ModelAndView principe(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de comment ça marche");
		return new ModelAndView("Home/principe");
	}
	
	@RequestMapping(value="/about")
	public ModelAndView about(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de A propos");
		return new ModelAndView("Home/about");
	}
}
