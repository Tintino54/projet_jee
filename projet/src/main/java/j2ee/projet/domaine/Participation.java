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
@Table(name = "PARTICIPATIONS")
@NamedQueries(value={
		@NamedQuery(name="rechercherParticipationParIdProjet", query="select p from Participation p where id_projet = :idprojet")
})
public class Participation implements Serializable {
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 678044766339709713L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_PARTICIPATION") 
	private int id;

	@Column(name = "ID_PROJET")
	private int id_campagne;

	@Column(name = "ID_USER")
	private int id_user;

	@Column(name = "DATEPARTICIPATION")
	private Date dateParticipation;

	@Column(name = "DONATION")
	private double donation;

	@Column(name = "MESSAGE")
	private String message;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_projet() {
		return id_campagne;
	}

	public void setId_projet(int id_projet) {
		this.id_campagne = id_projet;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
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