package j2ee.projet.domaine;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "USERS")
@NamedQuery(name="rechercherUtilisateurParMailEtMdp", query="select u.nom from Utilisateur u where u.mail like :mail and u.mdp like :mdp")
public class Utilisateur implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5304351969161437813L;

	@Id
	private int id;

	@Column(name = "NAME")
	private String nom;

	@Column(name = "FIRSTNAME")
	private String prenom;

	@Column(name = "MAIL")
	private String mail;

	@Column(name = "PASSWORD")
	private String mdp;

	@Column(name = "DOB")
	private Date dateNaiss;
	
	
	//0 pour les femmes, 1 pour les hommes
	@Column(name = "SEX")
	private int sex;

	public int getId() {
		return id;
	}

	public String getNom() {
		return nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public String getMail() {
		return mail;
	}

	public String getMdp() {
		return mdp;
	}

	public Date getDateNaiss() {
		return dateNaiss;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public void setDateNaiss(Date dateNaiss) {
		this.dateNaiss = dateNaiss;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}
}