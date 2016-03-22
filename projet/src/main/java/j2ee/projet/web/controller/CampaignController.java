package j2ee.projet.web.controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.domaine.Campagne;
import j2ee.projet.domaine.Participation;
import j2ee.projet.metier.CampagneService;;

@Controller
public class CampaignController {
	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@Autowired
	CampagneService campServ;
	
	// Lister les campagnes - Vue
	@RequestMapping(value = "/liste", method = RequestMethod.GET)
	public ModelAndView liste(HttpServletResponse response) throws IOException {
		List<Campagne> list = campServ.getList();

		ModelAndView model = new ModelAndView("Campaign/list");
		model.addObject("lists", list);
		return model;
	}

	// CrÃ©er une campagne - Vue
	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public ModelAndView create(Model model) throws IOException {
		logger.info("Affichage de la page de création d'une campagne");
		model.addAttribute("campaign", new Campagne());
		return new ModelAndView("Campaign/create", model.asMap());
	}

	// CrÃ©er une campagne - Action
	@RequestMapping(value = "/nouveau", method = RequestMethod.POST)
	public ModelAndView createSubmit(@ModelAttribute Campagne campaign) throws IOException {
		logger.info("Soumission du formulaire de création d'une campagne");
		// Persister la campagne dans la BDD :
		try {
			campServ.ajouter(campaign);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String sucessMessage = "Le projet <strong>" + campaign.getTitle() + "</strong> a bien été créé";

		ModelAndView model = new ModelAndView("Campaign/create");
		model.addObject("sucessMessage", sucessMessage);
		return model;
	}

	// Modifier une campagne -Vue
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(HttpServletResponse response, @PathVariable("id") String id) throws IOException {
		ModelAndView mav = new ModelAndView("Campaign/update");
		mav.addObject("id", id);
		logger.info("Affichage de la page de modification de la campagne" + id);
		return mav;
	}

	// Visualiser une campagne - Vue
	@RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
	public ModelAndView show(HttpServletResponse response, @PathVariable("id") String id) throws IOException {
		logger.info("Affichage de la campagne" + id);

		SecureRandom random = new SecureRandom();
		List<String> user = new ArrayList<String>();
		List<String> texte = new ArrayList<String>();
		List<Date> date = new ArrayList<Date>();
		for (int i = 0; i < 50; i++) {
			String u = new String(new BigInteger(130, random).toString(10));
			user.add(u);
			String t = new String(new BigInteger(130, random).toString(255));
			texte.add(t);
			Calendar cal = Calendar.getInstance();
			cal.set(1991, 01, 11);
			Date d = new Date(cal.getTimeInMillis());
			date.add(d);
		}
		ModelAndView model = new ModelAndView("Campaign/show");
		model.addObject("id", id);
		model.addObject("users", user);
		model.addObject("textes", texte);
		model.addObject("dates", date);

		List<Participation> dons = campServ.getDons(Integer.parseInt(id));
		model.addObject("dons", dons);
		return model;
	}

	
}
