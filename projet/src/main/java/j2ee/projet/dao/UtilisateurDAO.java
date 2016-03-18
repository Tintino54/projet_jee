package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.Utilisateur;

@Repository("utilisateurDao")
@Transactional(propagation = Propagation.REQUIRED)
public class UtilisateurDAO extends BaseDAO<Utilisateur>{
	
	public List<String> rechercherUtilisateurParMailEtMdp(String mail, String mdp)
	{
		TypedQuery<String> query = getEntityManager().createNamedQuery("rechercherUtilisateurParMailEtMdp",String.class);
		query.setParameter("mail", mail);
		query.setParameter("mdp", mdp);
		return query.getResultList();
	}
}
