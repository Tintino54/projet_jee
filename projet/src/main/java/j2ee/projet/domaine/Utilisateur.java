package j2ee.projet.domaine;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "USERS")
@NamedQueries(value={
		@NamedQuery(name="rechercherUtilisateurParMailEtMdp", query="select u from Utilisateur u where u.mail like :mail and u.mdp like :mdp"),
		@NamedQuery(name="rechercherUtilisateurParId", query="select u from Utilisateur u where u.id like :id"),
		@NamedQuery(name="rechercherUtilisateurParLogin", query="select u from Utilisateur u where u.login like :login")
})
public class Utilisateur implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5304351969161437813L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_USER")
	private int id;

	@Column(name = "LOGIN")
	private String login;

	@Column(name = "PASSWORD")
	private String mdp;
	
	@Column(name = "FIRSTNAME")
	private String prenom;
	
	@Column(name = "LASTNAME")
	private String nom;

	@Column(name = "MAILADRESS")
	private String mail;

	@Column(name = "BIRTHDATE")
	private Date dateNaiss;
	
	//0 pour les femmes, 1 pour les hommes
	@Column(name = "SEX")
	private int sexe;
	
	/*@OneToMany(fetch = FetchType.LAZY)
	private List<Participation> listDons;
	
	@OneToMany(fetch = FetchType.LAZY)
	private List<Commentaire> listCom;
	
	@OneToMany(fetch = FetchType.LAZY)
	private List<News> listNews;

	public List<Participation> getListDons() {
		return listDons;
	}

	public List<Commentaire> getListCom() {
		return listCom;
	}

	public void setListDons(List<Participation> listDons) {
		this.listDons = listDons;
	}

	public void setListCom(List<Commentaire> listCom) {
		this.listCom = listCom;
	}*/
	
	public Utilisateur()
	{}

	public Utilisateur(int id, String login, String mdp, String prenom, String nom, String mail, Date dateNaiss,
			int sexe) {
		super();
		this.id = id;
		this.login = login;
		this.mdp = mdp;
		this.prenom = prenom;
		this.nom = nom;
		this.mail = mail;
		this.dateNaiss = dateNaiss;
		this.sexe = sexe;
	}

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