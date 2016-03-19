package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Utilisateur;

@Repository
@Transactional
public class UtilisateurDAO extends BaseDAO<Utilisateur>{
	
	final static Logger logger = Logger.getLogger(UtilisateurDAO.class);
	
	public List<String> rechercherUtilisateurParMailEtMdp(String mail, String mdp)
	{
		if (getEntityManager()==null)
			logger.info("entityManager null");
		TypedQuery<String> query = getEntityManager().createNamedQuery("rechercherUtilisateurParMailEtMdp",String.class);
		query.setParameter("mail", mail);
		query.setParameter("mdp", mdp);
		return query.getResultList();
	}
}
