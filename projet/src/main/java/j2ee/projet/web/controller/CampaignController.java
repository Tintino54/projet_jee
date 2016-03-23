package j2ee.projet.web.controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.sql.Date;
import java.text.SimpleDateFormat;
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
import j2ee.projet.domaine.Commentaire;
import j2ee.projet.domaine.Participation;
import j2ee.projet.metier.CampagneService;
import j2ee.projet.metier.CommentaireService;

@Controller
public class CampaignController {
	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@Autowired
	CampagneService campServ;
	
	@Autowired
	CommentaireService comServ;
	
	// Lister les campagnes - Vue
	@RequestMapping(value = "/liste", method = RequestMethod.GET)
	public ModelAndView liste(HttpServletResponse response) throws IOException {
		List<Campagne> list = campServ.getList();

		ModelAndView model = new ModelAndView("Campaign/list");
		model.addObject("lists", list);
		return model;
	}

	// Créer une campagne - Vue
	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public ModelAndView create(Model model) throws IOException {
		logger.info("Affichage de la page de cr�ation d'une campagne");
		model.addAttribute("campaign", new Campagne());
		return new ModelAndView("Campaign/create", model.asMap());
	}

	// Créer une campagne - Action
	@RequestMapping(value = "/nouveau", method = RequestMethod.POST)
	public ModelAndView createSubmit(@ModelAttribute Campagne campaign) throws IOException {
		logger.info("Soumission du formulaire de cr�ation d'une campagne");
		// Persister la campagne dans la BDD :
		try {
			campServ.ajouter(campaign);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String sucessMessage = "Le projet <strong>" + campaign.getTitle() + "</strong> a bien �t� cr��";

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
		//List<String> texte = new ArrayList<String>();
		List<Date> date = new ArrayList<Date>();
		for (int i = 0; i < 50; i++) {
			String u = new String(new BigInteger(130, random).toString(10));
			user.add(u);
			String t = new String(new BigInteger(130, random).toString(255));
			//texte.add(t);
			Calendar cal = Calendar.getInstance();
			cal.set(1991, 01, 11);
			Date d = new Date(cal.getTimeInMillis());
			date.add(d);
		}
		
		int _id = Integer.parseInt(id);

		ModelAndView model = new ModelAndView("Campaign/show");
		model.addObject("id", id);
		model.addObject("users", user);
		List<Commentaire> texte = comServ.getCommentaireFromIdProjet(_id);
		model.addObject("textes", texte);
		model.addObject("dates", date);

		Campagne campagne =  campServ.getCampagneFromID(_id);
		model.addObject("campagne", campagne);
		
		List<Participation> dons = campServ.getDons(_id);
		model.addObject("dons", dons);
		
		Double montantCollecte = 0.0;
		int nombreDons5 = 0;
		int nombreDons5to20 = 0;
		int nombreDons20to50 = 0;
		int nombreDons50to100 = 0;
		int nombreDons100 = 0;
		for(int i = 0; i < dons.size(); i++)
		{
			Double montant = dons.get(i).getDonation();
			montantCollecte += montant;
			int montantEntier = montant.intValue();
			if(montantEntier <= 5)
				nombreDons5++;
			else if(montantEntier < 20)
				nombreDons5to20++;
			else if(montantEntier < 50)
				nombreDons20to50++;
			else if(montantEntier < 100)
				nombreDons50to100++;
			else
				nombreDons100++;
		}
		model.addObject("nombreDons5", nombreDons5);
		model.addObject("nombreDons5to20", nombreDons5to20);
		model.addObject("nombreDons20to50", nombreDons20to50);
		model.addObject("nombreDons50to100", nombreDons50to100);
		model.addObject("nombreDons100", nombreDons100);
		
		Double d = montantCollecte / campagne.getExpectedamount() * 100;
		Integer percent = d.intValue();
		model.addObject("percent", percent);
		Integer barWidth = percent;
		String classBar = "progress-bar progress-bar-red ";
		if(percent >= 100)
		{
			barWidth = 100;
			classBar = "progress-bar";
		}
		boolean termine = false;
		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		long diff = campagne.getDeadline().getTime( ) - today.getTime()  ;
		Long jours = diff / (1000*60*60*24);
		jours += 1;
		if(jours <= 0)
			termine = true;
		model.addObject("temps", jours.intValue());
		model.addObject("termine", termine);
		model.addObject("montantCollecte", montantCollecte.intValue());
		model.addObject("barWidth", barWidth);
		model.addObject("classBar", classBar);
		
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
        String dateString = DATE_FORMAT.format(campagne.getDeadline());
        model.addObject("dateString", dateString);
		return model;
	}

	
}
