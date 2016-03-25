package j2ee.projet.web.bean;

import java.sql.Date;

public class CampagneBean {
	private int id_user;

	private String title;

	private double expectedamount;

	private String description;

	private Date deadline;
	
	private String imagePath;
	
	private String resume;


	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
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
