package j2ee.projet.web.controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.domaine.Campaign;

@Controller
@RequestMapping("/projet")
public class CampaignController {
	final static Logger logger = Logger.getLogger(HomeController.class);
	
		//Lister les campagnes - Vue
		@RequestMapping(value="/liste", method=RequestMethod.GET)
		public ModelAndView liste(HttpServletResponse response) throws IOException {
			List<Campaign> list = getList();
			
			ModelAndView model = new ModelAndView("Campaign/list");
			model.addObject("lists", list);
			return model;
		}

		//Créer une campagne -Vue
		@RequestMapping(value="/nouveau", method=RequestMethod.GET)
		public ModelAndView create(HttpServletResponse response) throws IOException {
			logger.info("Affichage de la page de création d'une campagne");
			return new ModelAndView("Campaign/create");
		}

		//Modifier une campagne -Vue
		@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
		public ModelAndView update(HttpServletResponse response, @PathVariable("id") String id) throws IOException {
			ModelAndView mav = new ModelAndView("Campaign/update");
			mav.addObject("id", id);
			logger.info("Affichage de la page de modification de la campagne" + id);
			return mav;
		}

		//Visualiser une campagne - Vue
		@RequestMapping(value="/show/{id}", method=RequestMethod.GET)
		public ModelAndView show(HttpServletResponse response, @PathVariable("id") String id) throws IOException {
			logger.info("Affichage de la campagne" + id);
			
			SecureRandom random = new SecureRandom();
			List<String> user = new ArrayList<String>();
			List<String> texte = new ArrayList<String>();
			List<Date> date = new ArrayList<Date>();
			for(int i = 0; i < 50; i++)
			{
				String u = new String(new BigInteger(130, random).toString(10));
				user.add(u);
				String t = new String(new BigInteger(130, random).toString(255));
				texte.add(t);
				java.sql.Date d = new java.sql.Date(11,01,1991);
				date.add(d);
			}
			ModelAndView model = new ModelAndView("Campaign/show");
			model.addObject("id", id);
			model.addObject("users", user);
			model.addObject("textes", texte);
			model.addObject("dates", date);
			return model;
		}
		
		private List<Campaign> getList() {
			SecureRandom random = new SecureRandom();
			
			List<Campaign> list = new ArrayList<Campaign>();
			for(int i = 0; i < 20; i++)
			{
				Campaign c = new Campaign();
				c.setTitle(new BigInteger(130, random).toString(10));
				c.setDescription(new BigInteger(130, random).toString(255));
				c.setExpectedamount(Double.parseDouble(new BigInteger(10, random).toString()) );

				c.setDeadline(new java.sql.Date(11,01,1991));
				list.add(c);
			}

			return list;

		}
		
		private Campaign getProject() {
			SecureRandom random = new SecureRandom();
			
			Campaign c = new Campaign();
			c.setTitle("Mon super titre");
			c.setDescription("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae diam turpis. Aenean ornare hendrerit ."
					+ "Cras non nisi commodo, tempus lorem ac, lacinia turpis. Donec consequat tristique  at convallis. Mauris dolor "
					+ "purus, blandit ut magna convallis, varius posuere lorem. Ut sit amet gravida felis. Vestibulum rutrum tortor vestibulum "
					+ "rhoncus viverra.Cras sapien enim, vulputate a fringilla in, vehicula at ligula. Duis fermentum, mauris id " 
					+ " tempor accumsan, elit quam dapibus sapien, at vestibulum dolor metus sed arcu. Etiam ipsum leo, posuere nec laoreet a, "
					+"faucibus vitae nisi. Proin varius tortor vitae urna sodales ullamcorper sit amet vel arcu. Maecenas vulputate nisl odio,"
					+ "quis suscipit enim malesuada a. Donec nec erat viverra, iaculis leo quis, efficitur nisl. Pellentesque sed sagittis"
					+ "lectus. Phasellus tempor orci non viverra finibus. Aenean ac magna fringilla felis tincidunt vestibulum. Nam viverra"
					 + "condimentum risus mollis maximus. Donec finibus tortor nunc, id placerat quam mollis sit amet. Nullam sed  ex."
					 + "Maecenas id nulla ac justo pellentesque dapibus. Duis fringilla malesuada purus, pharetra suscipit felis  id. Aliquam "
					 + "quis faucibus justo. In semper nulla non mattis laoreet. Cum sociis natoque penatibus et magnis dis parturient montes,"
					 + "nascetur ridiculus mus. Praesent mattis pellentesque ex, id venenatis lorem tincidunt et. In gravida dui tortor,"
					 + "ut ultrices justo fermentum non. Morbi vel dui tincidunt, dapibus massa vel, feugiat dui. Vestibulum ante ipsum primis"
					 + "in faucibus orci luctus et ultrices posuere cubilia Curae;");
					
			c.setExpectedamount(500000);

			c.setDeadline(new java.sql.Date(11,01,1991));

			return c;

		}
}
