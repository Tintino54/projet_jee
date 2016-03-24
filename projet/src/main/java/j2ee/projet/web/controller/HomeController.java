package j2ee.projet.web.controller;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.web.bean.UtilisateurBean;

@Controller
public class HomeController {

	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@Autowired
	UtilisateurBean user;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(HttpServletResponse response) throws IOException{
		logger.info("Affichage de home.jsp");
		return "Home/home";
	}
	
	@RequestMapping(value="/inscription", method=RequestMethod.GET)
	public ModelAndView inscription(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de inscription");
		ModelAndView model = new ModelAndView("Home/inscription");
		return model;
	}

	@RequestMapping(value="/inscription", method=RequestMethod.POST)
	public ModelAndView inscriptionSubmit(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de inscription");
		String username = "<à compléter>";
		String sucessMessage = "Merci pour votre inscription <strong>" + username + "</strong>.<br>Vous pouvez maintenant vous connecter";
		
		ModelAndView model = new ModelAndView("Home/inscription");
		model.addObject("sucessMessage", sucessMessage);
		return model;
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
	
	@RequestMapping(value="/contact", method=RequestMethod.GET)
	public ModelAndView contact(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de contact");
		ModelAndView model = new ModelAndView("Home/contact");
		return model;
	}
	
	@RequestMapping(value="/contact", method=RequestMethod.POST)
	public ModelAndView contactSubmit(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de contact");
		String sucessMessage = "Le message a bien été envoyé";
		
		ModelAndView model = new ModelAndView("Home/contact");
		model.addObject("sucessMessage", sucessMessage);
		return model;
	}
}
