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
@RequestMapping("/campaign")
public class CampaignController {
	final static Logger logger = Logger.getLogger(HomeController.class);
	
		//Lister les campagnes - Vue
		@RequestMapping(value="/list", method=RequestMethod.GET)
		public ModelAndView list(HttpServletResponse response) throws IOException {
			return new ModelAndView("Campaign/list");
		}

		//Créer une campagne -Vue
		@RequestMapping(value="create", method=RequestMethod.GET)
		public ModelAndView create(HttpServletResponse response) throws IOException {
			return new ModelAndView("Campaign/create");
		}

		//Modifier une campagne -Vue
		@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
		public ModelAndView update(HttpServletResponse response, @PathVariable("id") String id) throws IOException {
			ModelAndView mav = new ModelAndView("Campaign/update");
			mav.addObject("id", id);
			return mav;
		}

		//Visualiser une campagne - Vue
		@RequestMapping(value="/show/{id}", method=RequestMethod.GET)
		public ModelAndView show(HttpServletResponse response, @PathVariable("id") String id) throws IOException {
			ModelAndView mav = new ModelAndView("Campaign/show");
			mav.addObject("id", id);
			return mav;
		}
}
