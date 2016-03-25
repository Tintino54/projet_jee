package j2ee.projet.metier;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.dao.CommentaireDAO;
import j2ee.projet.domaine.Commentaire;
import j2ee.projet.web.bean.CommentaireBean;

@Service
@Transactional
public class CommentaireService {
	final static Logger logger = Logger.getLogger(CommentaireService.class);

	@Autowired
	private CommentaireDAO commentaireDAO;

	public List<Commentaire> getCommentaireFromIdProjet(int id) {
		List<Commentaire> res = commentaireDAO.rechercherCommentairesParCampagne(id);
		return res;
	}

	public void ajouter(CommentaireBean commentaire) {
		Commentaire comment = new Commentaire();
		comment.setId(commentaire.getId());
		comment.setTitle(commentaire.getTitle());
		comment.setId_campagne(commentaire.getId_campagne());
		comment.setId_user(commentaire.getId_user());
		comment.setMessage(commentaire.getMessage());
		comment.setPublished(commentaire.getPublished());
		commentaireDAO.ajouterCommentaire(comment);
	}

}
