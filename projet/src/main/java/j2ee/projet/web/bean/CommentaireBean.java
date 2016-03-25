package j2ee.projet.web.bean;

import java.sql.Date;

import j2ee.projet.domaine.Commentaire;

public class CommentaireBean {
	private int id;

	private String title;

	private String message;

	private Date published;

	private int id_user;
	
	private int id_campagne;

	private UtilisateurBean utilisateur;

	public CommentaireBean() {
	}

	public CommentaireBean(Commentaire com) {
		super();
		this.id = com.getId();
		this.title = com.getTitle();
		this.message = com.getMessage();
		this.published = com.getPublished();
		this.id_user = com.getId_user();
		this.id_campagne = com.getId_campagne();
	}

	public UtilisateurBean getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(UtilisateurBean utilisateur) {
		this.utilisateur = utilisateur;
	}

	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getMessage() {
		return message;
	}

	public Date getPublished() {
		return published;
	}

	public int getId_user() {
		return id_user;
	}

	public int getId_campagne() {
		return id_campagne;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setPublished(Date published) {
		this.published = published;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public void setId_campagne(int id_campagne) {
		this.id_campagne = id_campagne;
	}

}
