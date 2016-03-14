package com.projet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.projet.bean.Utilisateur;

@Controller
public class ConnexionController {
	
	@Autowired
	Utilisateur user;
	
	@RequestMapping(value="/identification")
	public ModelAndView identification(ModelAndView model)
	{
		user.setNom("John");
		model.addObject("user", user);
		return model;
	}
}
