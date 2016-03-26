package j2ee.projet.dao;

import java.sql.Date;
import java.util.Calendar;
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

import j2ee.projet.domaine.Campagne;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-test.xml"})
@Transactional
@TransactionConfiguration(defaultRollback=true)
public class CampagneDAOTest {
	
	final static Logger logger = Logger.getLogger(CampagneDAOTest.class);
	
	@Autowired
	CampagneDAO campagneDAO;
	
	@Test
	public void testRechercherCampagneParId()
	{
		int id = 1;
		Campagne res = campagneDAO.rechercherCampagneParId(id);
		Assert.assertNotNull(res);
	}
	
	@Test
	public void testRechercherCampagne()
	{
		List<Campagne> res = campagneDAO.rechercherCampagne();
		Assert.assertNotNull(res);
	}
	
	@Test
	public void testAjouterCampagne()
	{
		Campagne campagne = new Campagne();
		campagne.setTitle("Hero Corp saison 5");
		campagne.setExpectedamount(60000);
		campagne.setDescription("blabla");
		campagne.setDeadline(new Date(Calendar.getInstance().getTimeInMillis()));
		campagne.setId_user(1);
		campagne.setImagePath("blabla");
		campagne.setResume("blabla");
		
		int dep = campagneDAO.rechercherCampagne().size();
		
		campagneDAO.ajouterCampagne(campagne);
		
		int arr = campagneDAO.rechercherCampagne().size();
		
		Assert.assertNotEquals(dep, arr);
	}
}
