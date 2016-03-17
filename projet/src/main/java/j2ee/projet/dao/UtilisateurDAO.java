package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.springframework.stereotype.Component;

import j2ee.projet.domaine.Utilisateur;

@Component
public class UtilisateurDAO extends BaseDAO<Utilisateur>{
	
	public List<String> rechercherUtilisateur()
	{
		TypedQuery<String> query = getEntityManager().createNamedQuery("rechercherUtilisateur",String.class);
		return query.getResultList();
	}
}
