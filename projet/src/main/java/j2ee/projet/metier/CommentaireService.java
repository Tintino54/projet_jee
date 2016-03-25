package j2ee.projet.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import j2ee.projet.dao.CommentaireDAO;
import j2ee.projet.domaine.Commentaire;
import j2ee.projet.web.bean.CommentaireBean;

@Service
public class CommentaireService {

	@Autowired
	private CommentaireDAO commentaireDAO;
	
	public List<Commentaire> getCommentaireFromIdProjet(int id)
	{
		List<Commentaire> res = commentaireDAO.rechercherCommentairesParCampagne(id);
		return res;
	}	

	public void ajouter(CommentaireBean commentaire) {
		Commentaire comment = new Commentaire();
		comment.setId(commentaire.getId());
		comment.setTitle(commentaire.getTitle());
		comment.setId_campaign(commentaire.getId_campaign());
		comment.setUtilisateur(commentaire.getUtilisateur());
		commentaireDAO.ajouterCommentaire(comment);
	}

}
