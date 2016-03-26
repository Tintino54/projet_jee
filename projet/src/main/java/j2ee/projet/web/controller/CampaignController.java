package j2ee.projet.web.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.domaine.Campagne;
import j2ee.projet.domaine.Commentaire;
import j2ee.projet.domaine.News;
import j2ee.projet.domaine.Participation;
import j2ee.projet.metier.CampagneService;
import j2ee.projet.metier.CommentaireService;
import j2ee.projet.metier.NewsService;
import j2ee.projet.metier.ParticipationService;
import j2ee.projet.metier.UtilisateurService;
import j2ee.projet.web.bean.CampagneBean;
import j2ee.projet.web.bean.CommentaireBean;
import j2ee.projet.web.bean.NewsBean;
import j2ee.projet.web.bean.ParticipantBean;
import j2ee.projet.web.bean.UtilisateurBean;
import j2ee.projet.web.bean.UtilisateurSessionBean;

@Controller
@SessionAttributes("user")
public class CampaignController {
	final static Logger logger = Logger.getLogger(HomeController.class);

	@Autowired
	CampagneService campServ;

	@Autowired
	CommentaireService comServ;

	@Autowired
	UtilisateurService userServ;

	@Autowired
	ParticipationService partServ;

	@Autowired
	NewsService newsServ;

	@Autowired
	UtilisateurSessionBean user;

	private int id_campagne;

	@RequestMapping(value = "/connexion", method = RequestMethod.GET)
	public ModelAndView connexion() throws IOException {
		logger.info("Affichage de la page de connexion");
		ModelAndView modelAndView = new ModelAndView("Home/connexion");
		modelAndView.addObject("user-entity", new UtilisateurBean());
		return modelAndView;
	}

	@RequestMapping(value = "/deconnexion")
	public String deconnexion(HttpSession session,Model model) throws IOException {
		logger.info("Affichage de la page de deconnexion");
		session.invalidate();
		model.asMap().remove("user");
		return "redirect:/";
	}

	@RequestMapping(value = "/check")
	public ModelAndView identification(@ModelAttribute UtilisateurBean u, HttpServletRequest request) {

		logger.info("Tentative de connexion de : " + u.getMail());
		String mail = u.getMail();

		byte[] bytes = u.getMdp().getBytes();

		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < bytes.length; i++) {
			sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
		}
		String mdp = sb.toString();

		ModelAndView modelAndView = new ModelAndView();

		UtilisateurBean bean = userServ.verification(mail, mdp);
		
		
		if (bean == null) {
			logger.info("Echec de connexion de " + mail);
			modelAndView.setViewName("redirect:connexion");
		} else {
			logger.info("Connexion réussie de " + bean.getId());
			user.setId(bean.getId());
			user.setLogin(bean.getLogin());
			modelAndView.setViewName("redirect:liste");
			modelAndView.addObject("user", user);
		}

		return modelAndView;
	}

	// Lister les campagnes - Vue
	@RequestMapping(value = "/liste", method = RequestMethod.GET)
	public String liste(HttpServletResponse response, Model model) throws IOException {

		List<Campagne> list = campServ.getList();

		List<Integer> totaux = new ArrayList<Integer>();
		List<Integer> percent = new ArrayList<Integer>();
		List<Integer> barWidth = new ArrayList<Integer>();
		List<String> classBar = new ArrayList<String>();
		for (int i = 0; i < list.size(); i++) {

			List<Participation> dons = partServ.rechercherParticipationParIdProjet(list.get(i).getId());
			Double montantCollecte = 0.0;
			for (int j = 0; j < dons.size(); j++) {
				Double montant = dons.get(j).getDonation();
				montantCollecte += montant;
			}
			Integer inte = montantCollecte.intValue();
			totaux.add(inte);

			// Pourcentage
			Double d = montantCollecte / list.get(i).getExpectedamount() * 100;
			model.addAttribute("d", d);
			percent.add(d.intValue());
			model.addAttribute("percent", percent);
			if (percent.get(i) >= 100) {
				barWidth.add(100);
				classBar.add("progress-bar");
			} else {
				barWidth.add(percent.get(i));
				classBar.add("progress-bar progress-bar-red");
			}

		}
		model.addAttribute("totaux", totaux);
		model.addAttribute("percent", percent);
		model.addAttribute("barWidth", barWidth);
		model.addAttribute("classBar", classBar);
		
		model.addAttribute("lists", list);
		return "Campaign/list";
	}

	// Créer une campagne - Vue
	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public String create(Model model) throws IOException {
		logger.info("Affichage de la page de cr�ation d'une campagne");
		model.addAttribute("campagne", new CampagneBean());
		return "Campaign/create";
	}

	// Créer une campagne - Action
	@RequestMapping(value = "/nouveau", method = RequestMethod.POST)
	public String createSubmit(@ModelAttribute("campagne") CampagneBean campaign, ModelMap modelMap)
			throws IOException {
		logger.info("Soumission du formulaire de cr�ation d'une campagne");
		// Persister la campagne dans la BDD :
		if (campaign == null)
			logger.info("ModelAttribute campaign est null");
		else {
			CampagneBean camp = new CampagneBean();
			camp.setId_user(user.getId());
			camp.setImagePath("unknown.jpg");
			camp.setResume("");

			camp.setTitle(campaign.getTitle());
			camp.setExpectedamount(campaign.getExpectedamount());
			camp.setDeadline(campaign.getDeadline());
			camp.setDescription(campaign.getDescription());

			campServ.ajouter(camp);
			logger.info("Campaign ajoutée " + camp.getTitle() + " " + camp.getExpectedamount());
		}

		modelMap.remove("campagne");
		return "redirect:/liste";
	}

	// Modifier une campagne - Vue
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String update(HttpServletResponse response, @PathVariable("id") String id, Model model) throws IOException {
		model.addAttribute("id", id);
		model.addAttribute("commentaire", new CommentaireBean());
		logger.info("Affichage de la page de modification de la campagne" + id);
		return "Campaign/update";
	}

	// Visualiser une campagne - Vue
	@RequestMapping(value = "/show/{id}")
	public String show(@PathVariable("id") String id, Model model) throws IOException {
		logger.info("Affichage de la campagne" + id);

		id_campagne = Integer.parseInt(id);

		model.addAttribute("id", id);

		Campagne campagne = campServ.rechercherCampagneParId(id_campagne);

		model.addAttribute("campagne", campagne);

		List<News> news = newsServ.getNewsFromIdProjet(id_campagne);
		model.addAttribute("news", news);

		List<Commentaire> com = comServ.getCommentaireFromIdProjet(id_campagne);
		List<CommentaireBean> texte = new ArrayList<CommentaireBean>(com.size());
		for (int i = 0; i < com.size(); i++) {
			CommentaireBean bean = new CommentaireBean(com.get(i));
			bean.setUtilisateur(userServ.rechercherUtilisateurParId(com.get(i).getId_user()));
			texte.add(bean);
		}
		model.addAttribute("textes", texte);

		List<Participation> part = partServ.rechercherParticipationParIdProjet(id_campagne);
		List<ParticipantBean> dons = new ArrayList<ParticipantBean>(part.size());
		for (int i = 0; i < part.size(); i++) {
			ParticipantBean bean = new ParticipantBean(part.get(i));
			bean.setUtilisateur(userServ.rechercherUtilisateurParId(part.get(i).getId_user()));
			dons.add(bean);
		}
		model.addAttribute("dons", dons);

		Double montantCollecte = 0.0;
		int nombreDons5 = 0;
		int nombreDons5to20 = 0;
		int nombreDons20to50 = 0;
		int nombreDons50to100 = 0;
		int nombreDons100 = 0;
		for (int i = 0; i < dons.size(); i++) {
			Double montant = dons.get(i).getDonation();
			montantCollecte += montant;
			int montantEntier = montant.intValue();
			if (montantEntier <= 5)
				nombreDons5++;
			else if (montantEntier < 20)
				nombreDons5to20++;
			else if (montantEntier < 50)
				nombreDons20to50++;
			else if (montantEntier < 100)
				nombreDons50to100++;
			else
				nombreDons100++;
		}
		model.addAttribute("nombreDons5", nombreDons5);
		model.addAttribute("nombreDons5to20", nombreDons5to20);
		model.addAttribute("nombreDons20to50", nombreDons20to50);
		model.addAttribute("nombreDons50to100", nombreDons50to100);
		model.addAttribute("nombreDons100", nombreDons100);

		Double d = montantCollecte / campagne.getExpectedamount() * 100;
		model.addAttribute("objectif", campagne.getExpectedamount());
		model.addAttribute("montantCollecte", montantCollecte);
		model.addAttribute("d", d);
		Integer percent = d.intValue();
		model.addAttribute("percent", percent);
		Integer barWidth = percent;
		String classBar = "progress-bar progress-bar-red ";
		if (percent >= 100) {
			barWidth = 100;
			classBar = "progress-bar";
		}
		boolean termine = false;
		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		long diff = campagne.getDeadline().getTime() - today.getTime();
		Long jours = diff / (1000 * 60 * 60 * 24);
		jours += 1;
		if (jours <= 0)
			termine = true;
		model.addAttribute("temps", jours.intValue());
		model.addAttribute("termine", termine);
		model.addAttribute("barWidth", barWidth);
		model.addAttribute("classBar", classBar);

		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
		String dateString = DATE_FORMAT.format(campagne.getDeadline());
		model.addAttribute("dateString", dateString);
		model.addAttribute("DATE_FORMAT", DATE_FORMAT);
		model.addAttribute("commentaire", new CommentaireBean());
		model.addAttribute("participation", new ParticipantBean());
		model.addAttribute("newsBean", new NewsBean());
		return "Campaign/show";
	}

	// Poster un commentaire - action
	@RequestMapping(value = "/postComment")
	public String postComment(@ModelAttribute("commentaire") CommentaireBean comment, Model model) throws IOException {
		logger.info("Soumission du formulaire de commentaire");
		if (comment == null)
			logger.info("ModelAttribute commentaire est null");
		else {
			CommentaireBean com = new CommentaireBean();
			com.setTitle(comment.getTitle());
			com.setMessage(comment.getMessage());
			com.setId_campagne(id_campagne);
			com.setId_user(user.getId());
			com.setPublished(new Date(Calendar.getInstance().getTimeInMillis()));
			logger.info("Commentaire ajouté projet:" + id_campagne + " user:" + user.getId());
			comServ.ajouter(com);

		}

		model.asMap().remove("commentaire");

		return "redirect:show/" + id_campagne;
	}

	// Poster un commentaire - action
	@RequestMapping(value = "/postParticip")
	public String postParticip(@ModelAttribute("participation") ParticipantBean participation, Model model)
			throws IOException {
		logger.info("Soumission du formulaire de participation");
		if (participation == null)
			logger.info("ModelAttribute participation est null");
		else {
			ParticipantBean participantBean = new ParticipantBean();

			participantBean.setDateParticipation(new Date(Calendar.getInstance().getTimeInMillis()));
			participantBean.setDonation(participation.getDonation());
			participantBean.setId_campagne(id_campagne);
			participantBean.setId_user(user.getId());

			partServ.ajouter(participantBean);
			logger.info("Participation ajouté " + participation.getDonation() + " user:" + user.getId());
		}

		model.asMap().remove("participation");
		return "redirect:show/" + id_campagne;
	}

	// Poster un commentaire - action
	@RequestMapping(value = "/postNews")
	public String postNews(@ModelAttribute("news") NewsBean news, Model model) throws IOException {
		logger.info("Soumission du formulaire de news");
		if (news == null)
			logger.info("ModelAttribute news est null");
		else {
			NewsBean com = new NewsBean();
			com.setTitle(news.getTitle());
			com.setMessage(news.getMessage());
			com.setId_campaign(id_campagne);
			com.setId_user(user.getId());
			com.setPublished(new Date(Calendar.getInstance().getTimeInMillis()));
			logger.info("Commentaire ajouté projet:" + id_campagne + " user:" + user.getId());
			newsServ.ajouter(com);

		}

		model.asMap().remove("news");

		return "redirect:show/" + id_campagne;
	}
}
