package j2ee.projet.web.controller;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.metier.UtilisateurService;
import j2ee.projet.web.bean.UtilisateurBean;

@Controller
@SessionAttributes("user")
public class ConnexionController {

	final static Logger logger = Logger.getLogger(ConnexionController.class);

	@Autowired
	UtilisateurService identification;

	@RequestMapping(value = "/connexion", method = RequestMethod.GET)
	public ModelAndView connexion() throws IOException {
		logger.info("Affichage de la page de connexion");
		return new ModelAndView("Home/connexion", "user-entity", new UtilisateurBean());
	}

	@RequestMapping(value = "/deconnexion")
	public String deconnexion(SessionStatus status) throws IOException {
		logger.info("Affichage de la page de deconnexion");
		status.setComplete();
		return "redirect:/";
	}

	@RequestMapping(value = "/check")
	public ModelAndView identification(@ModelAttribute UtilisateurBean userParam) {

		// String mail = request.getParameter("email");
		String mail = userParam.getEmail();

		// byte[] bytes = request.getParameter("pwd").getBytes();
		byte[] bytes = userParam.getPwd().getBytes();

		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < bytes.length; i++) {
			sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
		}
		String mdp = sb.toString();

		logger.info("Tentative de connexion de : " + mail + "/" + mdp);

		ModelAndView modelAndView = new ModelAndView();

		UtilisateurBean user = identification.verification(mail, mdp);

		if (user == null) {
			logger.info("Echec de connexion de " + mail);
			modelAndView.setViewName("redirect:connexion");
		} else {
			logger.info("Connexion réussie de " + mail);
			modelAndView.setViewName("redirect:liste");
			modelAndView.addObject("user", user);
		}

		return modelAndView;
	}
}
