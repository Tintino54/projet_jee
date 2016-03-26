package j2ee.projet.web.bean;

import java.sql.Date;

import j2ee.projet.domaine.Participation;

public class ParticipantBean {

	private int id;

	private int id_campagne;

	private int id_user;

	private Date dateParticipation;

	private double donation;

	private UtilisateurBean utilisateur;

	
	public UtilisateurBean getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(UtilisateurBean utilisateur) {
		this.utilisateur = utilisateur;
	}
	
	public ParticipantBean() {}

	public ParticipantBean(Participation part) {
		super();
		this.id = part.getId();
		this.id_campagne = part.getId_projet();
		this.id_user = part.getId_user();
		this.dateParticipation = part.getDateParticipation();
		this.donation = part.getDonation();
	}

	public int getId() {
		return id;
	}

	public int getId_campagne() {
		return id_campagne;
	}

	public int getId_user() {
		return id_user;
	}

	public Date getDateParticipation() {
		return dateParticipation;
	}

	public double getDonation() {
		return donation;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setId_campagne(int id_campagne) {
		this.id_campagne = id_campagne;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public void setDateParticipation(Date dateParticipation) {
		this.dateParticipation = dateParticipation;
	}

	public void setDonation(double donation) {
		this.donation = donation;
	}
}
