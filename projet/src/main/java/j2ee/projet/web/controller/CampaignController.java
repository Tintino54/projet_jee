package j2ee.projet.web.controller;

import java.io.IOException;
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
import j2ee.projet.web.bean.UtilisateurBean;

@Controller
public class CampaignController {
	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@Autowired
	CampagneService campServ;
	
	@Autowired
	CommentaireService comServ;
	
	@Autowired
	UtilisateurBean user;
	
	// Lister les campagnes - Vue
	@RequestMapping(value = "/liste", method = RequestMethod.GET)
	public ModelAndView liste(HttpServletResponse response) throws IOException {
		
		
		ModelAndView model = new ModelAndView("Campaign/list");
		
		List<Campagne> list = campServ.getList();

		List<Integer> totaux = new ArrayList<Integer>();
		List<Integer> percent = new ArrayList<Integer>();
		List<Integer> barWidth = new ArrayList<Integer>();
		List<String> classBar = new ArrayList<String>();
		for(int i = 0; i < list.size(); i++)
		{
			
			List<Participation> dons = campServ.getDons(list.get(i).getId());
			Double montantCollecte = 0.0;			
			for(int j = 0; j < dons.size(); j++)
			{
				Double montant = dons.get(j).getDonation();
				montantCollecte += montant;
			}
			Integer inte = montantCollecte.intValue();
			totaux.add(inte);
			
			// Pourcentage
			Double d = montantCollecte / list.get(i).getExpectedamount() * 100;
			model.addObject("d", d);
			percent.add(d.intValue());
			model.addObject("percent", percent);
			if(percent.get(i) >= 100)
			{
				barWidth.add(100);
				classBar.add("progress-bar");
			}
			else
			{
				barWidth.add(percent.get(i));
				classBar.add("progress-bar progress-bar-red");
			}
			
		}
		model.addObject("totaux", totaux);		
		model.addObject("percent", percent);	
		model.addObject("barWidth", barWidth);
		model.addObject("classBar", classBar);		

		model.addObject("lists", list);
		return model;
	}

	// Créer une campagne - Vue
	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public ModelAndView create(Model model) throws IOException {
		logger.info("Affichage de la page de cr�ation d'une campagne");
		return new ModelAndView("Campaign/create", "campaign", new Campagne());
	}

	// Créer une campagne - Action
	@RequestMapping(value = "/nouveau", method = RequestMethod.POST)
	public ModelAndView createSubmit(@ModelAttribute Campagne campaign) throws IOException {
		logger.info("Soumission du formulaire de cr�ation d'une campagne");
		// Persister la campagne dans la BDD :
		String sucessMessage ="Erreur";
		if (campaign == null)
			logger.info("ModelAttribute campaign est null");
		try {
			campServ.ajouter(campaign);
			sucessMessage = "Le projet <strong>" + campaign.getTitle() + "</strong> a bien �t� cr��";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
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
		
		int _id = Integer.parseInt(id);

		ModelAndView model = new ModelAndView("Campaign/show");
		model.addObject("id", id);
		List<Commentaire> texte = comServ.getCommentaireFromIdProjet(_id);
		model.addObject("textes", texte);

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
		model.addObject("objectif", campagne.getExpectedamount());
		model.addObject("montantCollecte", montantCollecte);
		model.addObject("d", d);
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
		model.addObject("barWidth", barWidth);
		model.addObject("classBar", classBar);
		
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
        String dateString = DATE_FORMAT.format(campagne.getDeadline());
        model.addObject("dateString", dateString);
        model.addObject("DATE_FORMAT", DATE_FORMAT);
		return model;
	}

	
}
