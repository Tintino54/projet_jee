package j2ee.projet.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView home(HttpServletResponse response) throws IOException{
		logger.info("Affichage de home.jsp");
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/connexion", method=RequestMethod.GET)
	public ModelAndView connexion(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de connexion");
		return new ModelAndView("connexion");
	}
	
	@RequestMapping(value="/connexion", method=RequestMethod.POST)
	public ModelAndView processConnexion(HttpServletResponse response) throws IOException{
		logger.info("Action de connexion");
		return new ModelAndView("home");
	}
}
