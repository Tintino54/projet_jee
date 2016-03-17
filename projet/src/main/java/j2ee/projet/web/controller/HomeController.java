package j2ee.projet.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.web.bean.UtilisateurBean;

@Controller
public class HomeController {

	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(HttpServletResponse response) throws IOException{
		logger.info("Affichage de home.jsp");
		return "home";
	}
	
	@RequestMapping(value="/connexion", method=RequestMethod.GET)
	public ModelAndView connexion(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de connexion");
		return new ModelAndView("connexion","command",new UtilisateurBean());
	}

	@RequestMapping(value="/inscription")
	public ModelAndView inscription(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de inscription");
		return new ModelAndView("inscription");
	}
	
	@RequestMapping(value="/nouveau")
	public ModelAndView nouveau(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de création de projet");
		return new ModelAndView("nouveau");
	}
	
	@RequestMapping(value="/projets")
	public ModelAndView projets(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de création de projet");
		return new ModelAndView("projets");
	}
	

}
