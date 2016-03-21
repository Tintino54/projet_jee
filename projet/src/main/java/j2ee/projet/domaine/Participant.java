package j2ee.projet.domaine;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "PARTICIPANTS")
@NamedQueries(value={
		@NamedQuery(name="listingParticipations", query="select p from Participant where id_projet = :idprojet")
})
/**
 * NOTA BENE : une incompréhension s'est glissée dans nos documents
 * conduisant la table Participations à devenir la table Participants.
 * 
 * Nous conserverons cette confusion sur le nom de classe et de fichier
 *  par manque de temps. En revanche, il sera fait référence aux partcipations 
 * et aux contributeurs dans les requêtes.
 * 
 *
 */
public class Participant implements Serializable {
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 678044766339709713L;

	@Id
	private int id;

	@Column(name = "ID_PROJET")
	private int id_projet;

	@Column(name = "ID_USER")
	private int id_user;

	@Column(name = "DATEPARTICIPATION")
	private Date dateParticipation;

	@Column(name = "DONATION")
	private double donation;

	@Column(name = "MESSAGE")
	private int message;

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

	public int getMessage() {
		return message;
	}

	public void setMessage(int message) {
		this.message = message;
	}
	
}