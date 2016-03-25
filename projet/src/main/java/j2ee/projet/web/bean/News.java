package j2ee.projet.web.bean;

import java.sql.Date;

public class News {
	private int id;

	private String title;

	private String message;

	private Date published;

	private int id_user;

	private int id_campaign;

	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getMessage() {
		return message;
	}

	public Date getPublished() {
		return published;
	}

	public int getId_user() {
		return id_user;
	}

	public int getId_campaign() {
		return id_campaign;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setPublished(Date published) {
		this.published = published;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public void setId_campaign(int id_campaign) {
		this.id_campaign = id_campaign;
	}
	
	
}
