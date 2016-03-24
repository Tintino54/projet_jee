package j2ee.projet.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import j2ee.projet.dao.CommentaireDAO;
import j2ee.projet.domaine.Commentaire;

@Service
public class CommentaireService {

	@Autowired
	private CommentaireDAO commentaireDAO;
	
	public List<Commentaire> getCommentaireFromIdProjet(int id)
	{
		List<Commentaire> res = commentaireDAO.rechercherCommentairesParCampagne(id);
		return res;
	}

	public void ajouter(Commentaire commentaire) {
		commentaireDAO.ajouterCommentaire(commentaire);
	}

}
