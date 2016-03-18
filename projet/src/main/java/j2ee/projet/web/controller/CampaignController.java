package j2ee.projet.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class CampaignController {
	final static Logger logger = Logger.getLogger(HomeController.class);
	
		//Lister les campagnes - Vue
		@RequestMapping(value="/liste", method=RequestMethod.GET)
		public ModelAndView list(HttpServletResponse response) throws IOException {
			ModelAndView mav = new ModelAndView("Campaign/list");
//			mav.addObject("campagnes", campagnes);
			logger.info("Affichage de la liste des campagnes");
			return mav;
		}

		//Créer une campagne -Vue
		@RequestMapping(value="/new", method=RequestMethod.GET)
		public ModelAndView create(HttpServletResponse response) throws IOException {
			logger.info("Affichage de la page de création d'une campagne");
			return new ModelAndView("nouveau");
		}

		//Modifier une campagne -Vue
		@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
		public ModelAndView update(HttpServletResponse response, @PathVariable("id") String id) throws IOException {
			ModelAndView mav = new ModelAndView("Campaign/update");
			mav.addObject("id", id);
			logger.info("Affichage de la page de modification de la campagne" + id);
			return mav;
		}

		//Visualiser une campagne - Vue
		@RequestMapping(value="/show/{id}", method=RequestMethod.GET)
		public ModelAndView show(HttpServletResponse response, @PathVariable("id") String id) throws IOException {
			ModelAndView mav = new ModelAndView("Campaign/show");
			mav.addObject("id", id);
			logger.info("Affichage de la campagne" + id);
			return mav;
		}
}
