package j2ee.projet.web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.domaine.Commentaire;
import j2ee.projet.metier.CampagneService;
import j2ee.projet.metier.CommentaireService;

import java.util.Random;
 
/**
 * @author Crunchify.com
 * 
 */
 


@Controller
public class CrunchifySpringAjaxJQuery {
	
	@Autowired
	CommentaireService comServ;
 
    @RequestMapping("/ajax")
    public ModelAndView helloAjaxTest() {
        return new ModelAndView("ajax", "message", "Crunchify Spring MVC with Ajax and JQuery Demo..");
    }
 
    @RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
    public @ResponseBody
    String getTime() {
    	
    	           
    	String result = "[";
		List<Commentaire> texte = comServ.getCommentaireFromIdProjet(1);
		for(int i = 0; i < texte.size(); i++)
		{
			if(i == (texte.size() - 1 ))
			{
				result += "{\"texte\": \"" + texte.get(i).getMessage() + "\""
							+ ", \"sexe\": \"" + texte.get(i).getUtilisateur().getSexe() + "\""
							+ ", \"titre\": \"" + texte.get(i).getTitle() + "\""
							+ ", \"date\": \"" + texte.get(i).getPublished() + "\""
							+ ", \"nom\": \"" + texte.get(i).getUtilisateur().getLogin() + "\"}";
			}

			else
			{
				result += "{\"texte\": \"" + texte.get(i).getMessage() + "\""
						+ ", \"sexe\": \"" + texte.get(i).getUtilisateur().getSexe() + "\""
						+ ", \"titre\": \"" + texte.get(i).getTitle() + "\""
						+ ", \"date\": \"" + texte.get(i).getPublished() + "\""
						+ ", \"nom\": \"" + texte.get(i).getUtilisateur().getLogin() + "\"},";
			}
		}
		result += "]";
 
        
        
        return result;
    }
}