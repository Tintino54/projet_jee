package j2ee.projet.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.metier.UtilisateurService;
import j2ee.projet.web.bean.UtilisateurBean;
import j2ee.projet.web.bean.UtilisateurSessionBean;

@Controller
public class ConnexionController {

	@Autowired
	private UtilisateurSessionBean user;

	final static Logger logger = Logger.getLogger(ConnexionController.class);

	@Autowired
	UtilisateurService identification;

	@RequestMapping(value = "/connexion", method = RequestMethod.GET)
	public ModelAndView connexion() throws IOException {
		logger.info("Affichage de la page de connexion");
		ModelAndView modelAndView = new ModelAndView("Home/connexion");
		modelAndView.addObject("user-entity", new UtilisateurBean());
		return modelAndView;
	}

	@RequestMapping(value = "/deconnexion")
	public String deconnexion(SessionStatus status) throws IOException {
		logger.info("Affichage de la page de deconnexion");
		status.setComplete();
		return "redirect:/";
	}

	@RequestMapping(value = "/check")
	public ModelAndView identification(@ModelAttribute("user") UtilisateurBean u, HttpServletRequest request) {

		logger.info("Tentative de connexion de : " + u.getMail());
		String mail = u.getMail();

		byte[] bytes = u.getMdp().getBytes();

		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < bytes.length; i++) {
			sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
		}
		String mdp = sb.toString();

		ModelAndView modelAndView = new ModelAndView();

		UtilisateurBean bean = identification.verification(mail, mdp);
		
		
		if (bean == null) {
			logger.info("Echec de connexion de " + mail);
			modelAndView.setViewName("redirect:connexion");
		} else {
			logger.info("Connexion réussie de " + mail);
			user.setId(bean.getId());
			user.setLogin(bean.getLogin());
			modelAndView.setViewName("redirect:liste");
			modelAndView.addObject("user", user);
		}

		return modelAndView;
	}
}
