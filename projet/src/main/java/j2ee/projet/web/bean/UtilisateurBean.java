package j2ee.projet.web.bean;

import java.sql.Date;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Component
@Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class UtilisateurBean {

	private int id;

	private String login;

	private String mdp;

	private String prenom;

	private String nom;

	private String mail;

	private Date dateNaiss;

	// 0 pour les femmes, 1 pour les hommes
	private int sexe;

	public int getId() {
		return id;
	}

	public String getLogin() {
		return login;
	}

	public String getMdp() {
		return mdp;
	}

	public String getPrenom() {
		return prenom;
	}

	public String getNom() {
		return nom;
	}

	public String getMail() {
		return mail;
	}

	public Date getDateNaiss() {
		return dateNaiss;
	}

	public int getSexe() {
		return sexe;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setDateNaiss(Date dateNaiss) {
		this.dateNaiss = dateNaiss;
	}

	public void setSexe(int sexe) {
		this.sexe = sexe;
	}

}
