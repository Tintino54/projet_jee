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
@Table(name = "CAMPAIGNS")
@NamedQueries(value={
	@NamedQuery(name="rechercherCampagneParId", query="select c from Campagne c where c.id like :id"),
	@NamedQuery(name="rechercherCampagne", query="select c from Campagne c")
})
public class Campagne implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5116225850894993173L;

	@Id
	@Column(name = "ID_CAMPAIGN")
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
	
	@Column(name = "IMAGE_PATH")
	private String imagePath;
	
	@Column(name = "RESUME")
	private String resume;
	
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
	
	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}
}