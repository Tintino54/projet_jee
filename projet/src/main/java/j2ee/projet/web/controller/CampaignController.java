package j2ee.projet.web.controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.sql.Date;
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

import j2ee.projet.dao.CampagneDAO;
import j2ee.projet.domaine.Campagne;;

@Controller
public class CampaignController {
	final static Logger logger = Logger.getLogger(HomeController.class);

	@Autowired
	private CampagneDAO campagneDAO;

	// Lister les campagnes - Vue
	@RequestMapping(value = "/liste", method = RequestMethod.GET)
	public ModelAndView liste(HttpServletResponse response) throws IOException {
		List<Campagne> list = getList();

		ModelAndView model = new ModelAndView("Campaign/list");
		model.addObject("lists", list);
		return model;
	}

	// Créer une campagne - Vue
	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public ModelAndView create(Model model) throws IOException {
		logger.info("Affichage de la page de création d'une campagne");
		model.addAttribute("campaign", new Campagne());
		return new ModelAndView("Campaign/create", model.asMap());
	}

	// Créer une campagne - Action
	@RequestMapping(value = "/nouveau", method = RequestMethod.POST)
	public ModelAndView createSubmit(@ModelAttribute Campagne campaign) throws IOException {
		logger.info("Soumission du formulaire de création d'une campagne");
		// Persister la campagne dans la BDD :
		try {
			campagneDAO.insert(campaign);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        String sucessMessage = "Le projet a bien été crée";
        
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

		SecureRandom random = new SecureRandom();
		List<String> user = new ArrayList<String>();
		List<String> texte = new ArrayList<String>();
		List<Date> date = new ArrayList<Date>();
		for (int i = 0; i < 50; i++) {
			String u = new String(new BigInteger(130, random).toString(10));
			user.add(u);
			String t = new String(new BigInteger(130, random).toString(255));
			texte.add(t);
			Calendar cal = Calendar.getInstance();
			cal.set(1991, 01, 11);
			Date d = new Date(cal.getTimeInMillis());
			date.add(d);
		}
		ModelAndView model = new ModelAndView("Campaign/show");
		model.addObject("id", id);
		model.addObject("users", user);
		model.addObject("textes", texte);
		model.addObject("dates", date);

		List<Campagne> dons = getDons();
		model.addObject("dons", dons);
		return model;
	} 
 
	private List<Campagne> getList() {
		SecureRandom random = new SecureRandom();

		List<Campagne> list = new ArrayList<Campagne>();
		for (int i = 0; i < 20; i++) {
			Campagne c = new Campagne();
			c.setTitle("tototototootot");
			c.setDescription("aubergineuuuuuuuuuuuh");
			c.setExpectedamount(Double.parseDouble(new BigInteger(10, random).toString()));

			Calendar cal = Calendar.getInstance();
			cal.set(1991, 01, 11);
			Date d = new Date(cal.getTimeInMillis());
			c.setDeadline(d);

			list.add(c);
		}

		return list;

	}

	private List<Campagne> getDons() {
		SecureRandom random = new SecureRandom();

		List<Campagne> list = new ArrayList<Campagne>();
		for (int i = 0; i < 83; i++) {
			Campagne c = new Campagne();
			c.setTitle(new BigInteger(10, random).toString(10));
			c.setDescription(new BigInteger(10, random).toString(10));
			c.setExpectedamount(Double.parseDouble(new BigInteger(2, random).toString()));

			Calendar cal = Calendar.getInstance();
			cal.set(1991, 01, 11);
			Date d = new Date(cal.getTimeInMillis());
			c.setDeadline(d);
			list.add(c);
		}

		return list;

	}

	private Campagne getProject() {
		SecureRandom random = new SecureRandom();

		Campagne c = new Campagne();
		c.setTitle("Mon super titre");
		c.setDescription(
				"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae diam turpis. Aenean ornare hendrerit ."
						+ "Cras non nisi commodo, tempus lorem ac, lacinia turpis. Donec consequat tristique  at convallis. Mauris dolor "
						+ "purus, blandit ut magna convallis, varius posuere lorem. Ut sit amet gravida felis. Vestibulum rutrum tortor vestibulum "
						+ "rhoncus viverra.Cras sapien enim, vulputate a fringilla in, vehicula at ligula. Duis fermentum, mauris id "
						+ " tempor accumsan, elit quam dapibus sapien, at vestibulum dolor metus sed arcu. Etiam ipsum leo, posuere nec laoreet a, "
						+ "faucibus vitae nisi. Proin varius tortor vitae urna sodales ullamcorper sit amet vel arcu. Maecenas vulputate nisl odio,"
						+ "quis suscipit enim malesuada a. Donec nec erat viverra, iaculis leo quis, efficitur nisl. Pellentesque sed sagittis"
						+ "lectus. Phasellus tempor orci non viverra finibus. Aenean ac magna fringilla felis tincidunt vestibulum. Nam viverra"
						+ "condimentum risus mollis maximus. Donec finibus tortor nunc, id placerat quam mollis sit amet. Nullam sed  ex."
						+ "Maecenas id nulla ac justo pellentesque dapibus. Duis fringilla malesuada purus, pharetra suscipit felis  id. Aliquam "
						+ "quis faucibus justo. In semper nulla non mattis laoreet. Cum sociis natoque penatibus et magnis dis parturient montes,"
						+ "nascetur ridiculus mus. Praesent mattis pellentesque ex, id venenatis lorem tincidunt et. In gravida dui tortor,"
						+ "ut ultrices justo fermentum non. Morbi vel dui tincidunt, dapibus massa vel, feugiat dui. Vestibulum ante ipsum primis"
						+ "in faucibus orci luctus et ultrices posuere cubilia Curae;");

		c.setExpectedamount(500000);

		Calendar cal = Calendar.getInstance();
		cal.set(1991, 01, 11);
		Date d = new Date(cal.getTimeInMillis());
		c.setDeadline(d);

		return c;

	}
}
