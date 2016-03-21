package j2ee.projet.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-test.xml"})
@Transactional
@TransactionConfiguration(defaultRollback=true)
public class UtilisateurDAOTest {

	@Autowired
	UtilisateurDAO uDao;

	@Test
	public void testRechercherUtilisateurParMailEtMdp() {
		String mail = "aubergine@jardin.fr";
		String mdp = "$2a$10$3craKxVzieLQe4TrOs5PxepoqKpMoDDKH6PmkUalKT4vGJm2H0eJC";
		uDao.rechercherUtilisateurParMailEtMdp(mail, mdp);
	}
}
