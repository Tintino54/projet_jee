package j2ee.projet.web.controller;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.domaine.Commentaire;
import j2ee.projet.metier.CommentaireService;

public class FormController {
	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@Autowired
	CommentaireService comServ;
	
	// Poster un commentaire - Action
	@RequestMapping(value = "/nouveaucommentaire", method = RequestMethod.POST)
	public ModelAndView createSubmit(@ModelAttribute Commentaire commentaire) throws IOException {
		logger.info("Soumission du formulaire de création d'un commentaire");
		// Persister la campagne dans la BDD :
		try {
			comServ.ajouter(commentaire);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String sucessMessage = "Le projet <strong>" + commentaire.getTitle() + "</strong> a bien �t� cr��";

		ModelAndView model = new ModelAndView("Campaign/create");
		model.addObject("sucessMessage", sucessMessage);
		return model;
	}
}
