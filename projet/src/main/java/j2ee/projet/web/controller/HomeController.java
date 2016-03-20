package j2ee.projet.web.controller;
import java.security.SecureRandom;
import java.math.BigInteger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.domaine.Campaign;
import j2ee.projet.web.bean.UtilisateurBean;

@Controller
public class HomeController {

	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(HttpServletResponse response) throws IOException{
		logger.info("Affichage de home.jsp");
		return "Home/home";
	}
	
	@RequestMapping(value="/connexion", method=RequestMethod.GET)
	public ModelAndView connexion(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de connexion");
		return new ModelAndView("Home/connexion","command",new UtilisateurBean());
	}

	@RequestMapping(value="/inscription")
	public ModelAndView inscription(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de inscription");
		return new ModelAndView("Home/inscription");
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
	
	@RequestMapping(value="/contact")
	public ModelAndView contact(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de contact");
		return new ModelAndView("Home/contact");
	}
}
