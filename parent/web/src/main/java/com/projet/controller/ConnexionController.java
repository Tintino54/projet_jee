package com.projet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConnexionController {
	
	@RequestMapping(value="/identification")
	public String identification()
	{
		return "index";
	}
}
