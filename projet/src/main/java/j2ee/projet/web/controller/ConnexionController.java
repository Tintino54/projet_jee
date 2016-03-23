package j2ee.projet.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.metier.UtilisateurService;
import j2ee.projet.web.bean.UtilisateurBean;

@Controller
@SessionAttributes( value="user", types={UtilisateurBean.class} ) 
public class ConnexionController {

	final static Logger logger = Logger.getLogger(ConnexionController.class);

	@Autowired
	UtilisateurService identification;
	
	@Autowired
	UtilisateurBean user;
	
	@RequestMapping(value="/connexion", method=RequestMethod.GET)
	@ModelAttribute("user")
	public ModelAndView connexion(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de connexion");
		return new ModelAndView("Home/connexion");
	}
	

	@RequestMapping(value="/deconnexion")
	public String deconnexion(HttpServletRequest request) throws IOException{
		logger.info("Affichage de la page de deconnexion");
		request.getSession().removeAttribute("user");
		request.getSession(true).invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/check")
	public String identification(Model model, HttpServletRequest request) {
		
		String mail = request.getParameter("email");
		
		byte[] bytes = request.getParameter("pwd").getBytes();
        StringBuilder sb = new StringBuilder();
        for(int i=0; i< bytes.length ;i++)
        {
            sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
        }
        String mdp = sb.toString();

		logger.info("Connexion de : " + mail + "/" + mdp);

		try
		{
		identification.verification(mail, mdp);
		}
		catch(Exception e)
		{
			logger.info("Exception : "+e.getMessage());
		}
		user = identification.getUtilisateur(mail, mdp);
		
		request.getSession(true).setAttribute("user", user);
		
		return "redirect:liste";
	}
}
