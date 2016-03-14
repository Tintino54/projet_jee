package com.projet.bean;

public class Utilisateur {

	private String nom;

	private String prenom;

	private String mdp;

	private String dateNaiss;

	private String mail;

	public String getNom() {
		return nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public String getMdp() {
		return mdp;
	}

	public String getDateNaiss() {
		return dateNaiss;
	}

	public String getMail() {
		return mail;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public void setDateNaiss(String dateNaiss) {
		this.dateNaiss = dateNaiss;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

}
