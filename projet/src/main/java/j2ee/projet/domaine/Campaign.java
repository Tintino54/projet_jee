package j2ee.projet.domaine;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "CAMPAIGNS")
@NamedQuery(name="rechercherCampagneParId", query="select c from Campaign c where c.id like :id")
public class Campaign implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5116225850894993173L;

	@Id
	private int id;

	@Column(name = "TITLE")
	private String title;

	@Column(name = "EXPECTEDAMOUNT")
	private double expectedamount;

	@Column(name = "DESCRIPTION")
	private String description;

	@Column(name = "DEADLINE")
	private Date deadline;

	@Column(name = "ID_USER")
	private int id_user;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getExpectedamount() {
		return expectedamount;
	}

	public void setExpectedamount(double expectedamount) {
		this.expectedamount = expectedamount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
}