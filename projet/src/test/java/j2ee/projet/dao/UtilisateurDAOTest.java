package j2ee.projet.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@ContextConfiguration(locations = "classpath:application-context-test.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UtilisateurDAOTest {

	@Autowired
	UtilisateurDAO uDao;
	
	@Test
    @Transactional
    @Rollback(true)
    public void testRechercherUtilisateurParMailEtMdp()
    {
       
    }
}
