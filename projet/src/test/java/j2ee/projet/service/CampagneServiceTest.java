package j2ee.projet.service;

import static org.junit.Assert.fail;

import java.sql.Date;
import java.util.Calendar;

import org.apache.log4j.Logger;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import j2ee.projet.dao.CampagneDAO;
import j2ee.projet.metier.CampagneService;
import j2ee.projet.web.bean.CampagneBean;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-test.xml"})
public class CampagneServiceTest {
	final static Logger logger = Logger.getLogger(CampagneServiceTest.class);

	@Autowired 
	private CampagneService cService;
	
	@Autowired
	private CampagneDAO cDAO;
	
	@Test
	public void testAjouter() {
		CampagneBean campaign = new CampagneBean();
		campaign.setTitle("blabla");
		campaign.setExpectedamount(2000);
		campaign.setDeadline(new Date(Calendar.getInstance().getTimeInMillis()));
		campaign.setDescription("blabla");
		campaign.setId_user(1);
		campaign.setImagePath("");
		campaign.setResume("");
		
		int dep = cDAO.rechercherCampagne().size();
		
		cService.ajouter(campaign);
		
		int arr = cDAO.rechercherCampagne().size();
		
		logger.info(dep+" : "+arr);
		
		Assert.assertNotEquals(dep, arr);
	}

	@Test
	public void testGetList() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetCampagneFromID() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetDons() {
		fail("Not yet implemented");
	}

}
