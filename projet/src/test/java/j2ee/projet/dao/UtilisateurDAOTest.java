package j2ee.projet.dao;

import java.sql.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Utilisateur;
import j2ee.projet.web.bean.UtilisateurBean;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-test.xml"})
@Transactional
@TransactionConfiguration(defaultRollback=true)
public class UtilisateurDAOTest {

	final static Logger logger = Logger.getLogger(UtilisateurDAOTest.class);
	
	@Autowired
	UtilisateurDAO uDao;

	@Test
	public void testRechercherUtilisateurParMailEtMdp() {
		String mail = "aubergine@jardin.fr";
		String mdp = "$2a$10$3craKxVzieLQe4TrOs5PxepoqKpMoDDKH6PmkUalKT4vGJm2H0eJC";
		List<String> res = uDao.rechercherUtilisateurParMailEtMdp(mail, mdp);
		Assert.assertNotNull(res);
	}
	
	@Test
	public void testRechercherUtilisateurParId() {
		int id = 1;
		List<Utilisateur> res = uDao.rechercherUtilisateurParId(id);
		Assert.assertNotNull(res);
	}
	
	@Test
	public void testAjouterUtilisateur()
	{
		UtilisateurBean utilisateur = new UtilisateurBean();
		utilisateur.setLogin("toto");
		utilisateur.setEmail("toto@jardin.fr");
		utilisateur.setPwd("mdp");
		Date date = new Date(10);
		utilisateur.setDateNaiss(date);
		utilisateur.setNom("cerise");
		utilisateur.setPrenom("tomate");
		utilisateur.setSexe(0);
		
		uDao.ajouterUtilisateur(utilisateur);
		
		List<String> res = uDao.rechercherUtilisateurParMailEtMdp("toto@jardin.fr", "mdp");
		Assert.assertNotNull(res);
	}
}
