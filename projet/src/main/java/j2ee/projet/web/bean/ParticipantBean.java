package j2ee.projet.web.bean;

import java.sql.Date;

import j2ee.projet.domaine.Utilisateur;

public class ParticipantBean {

	private int id;

	private int id_projet;

	private Utilisateur utilisateur;

	private Date dateParticipation;

	private double donation;

	private String message;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_projet() {
		return id_projet;
	}

	public void setId_projet(int id_projet) {
		this.id_projet = id_projet;
	}

	

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(UtilisateurBean utilisateur) {
		Utilisateur user = new Utilisateur();
		user.setId(utilisateur.getId());
		user.setMail(utilisateur.getEmail());
		user.setLogin(utilisateur.getLogin());
		user.setMdp(utilisateur.getPwd());
		this.utilisateur = user;
	}

	public Date getDateParticipation() {
		return dateParticipation;
	}

	public void setDateParticipation(Date dateParticipation) {
		this.dateParticipation = dateParticipation;
	}

	public double getDonation() {
		return donation;
	}

	public void setDonation(double donation) {
		this.donation = donation;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
