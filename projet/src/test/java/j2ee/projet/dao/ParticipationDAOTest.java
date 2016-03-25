package j2ee.projet.dao;

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

import j2ee.projet.domaine.Participation;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-test.xml"})
@Transactional
@TransactionConfiguration(defaultRollback=true)
public class ParticipationDAOTest {

	final static Logger logger = Logger.getLogger(ParticipationDAOTest.class);
	
	@Autowired
	ParticipationDAO pDao;
	
	@Test
	public void testRechercherParticipationParIdProjet() {
		int id = 1;
		List<Participation> res = pDao.rechercherParticipationParIdProjet(id);
		Assert.assertNotNull(res);
		logger.info("Taille de la liste de retour : "+res.size());
	}

}
