package j2ee.projet.web.bean;

import org.springframework.stereotype.Component;

@Component
public class UtilisateurBean {

	private String login;

	private String email;

	private String pwd;
	

	public String getEmail() {
		return email;
	}

	public String getPwd() {
		return pwd;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
