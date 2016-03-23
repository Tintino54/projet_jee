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

import j2ee.projet.domaine.Commentaire;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-test.xml"})
@Transactional
@TransactionConfiguration(defaultRollback=true)
public class CommentaireDAOTest {
	
	final static Logger logger = Logger.getLogger(CommentaireDAOTest.class);

	@Autowired
	CommentaireDAO cDao;
	
	@Test
	public void testRechercherCommentairesParCampagne() {
		int id = 1;
		List<Commentaire>res = cDao.rechercherCommentairesParCampagne(id);
		
		Assert.assertNotNull(res);
	}

}
