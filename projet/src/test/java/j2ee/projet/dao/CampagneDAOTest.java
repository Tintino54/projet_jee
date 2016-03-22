package j2ee.projet.dao;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Campaign;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-test.xml"})
@Transactional
@TransactionConfiguration(defaultRollback=true)
public class CampagneDAOTest {
	
	@Autowired
	CampagneDAO campagneDAO;
	
	@Test
	public void testRechercherCampagneParId()
	{
		int id = 1;
		List<Campaign> res = campagneDAO.rechercherCampagneParId(id);
		Assert.assertNotNull(res);
	}
	
	@Test
	public void testRechercherCampagne()
	{
		List<Campaign> res = campagneDAO.rechercherCampagne();
		Assert.assertNotNull(res);
	}
}
