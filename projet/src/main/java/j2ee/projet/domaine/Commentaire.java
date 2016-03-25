package j2ee.projet.domaine;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "COMMENTS")
@NamedQuery(name="rechercherCommentairesParCampagne", query="select c from Commentaire c where c.id_campaign like :id_campaign")
public class Commentaire implements Serializable {

	private static final long serialVersionUID = -5116225850894993173L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_COMMENTS")
	private int id;
	
	@Column(name = "TITLE")
	private String title;
	
	@Column(name = "MESSAGE")
	private String message;
	
	@Column(name = "PUBLISHED")
	private Date published;
	
	@OneToOne
	@JoinColumn(name="id_user")
	Utilisateur utilisateur;
	
	@Column(name = "ID_CAMPAIGN")
	private int id_campaign;
	

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

	public int getId_campaign() {
		return id_campaign;
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

	public void setId_campaign(int id_campaign) {
		this.id_campaign = id_campaign;
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}
	
	
}
