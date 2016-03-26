package j2ee.projet.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.dao.NewsDAO;
import j2ee.projet.domaine.News;
import j2ee.projet.web.bean.NewsBean;

@Service
@Transactional
public class NewsService {
	
	@Autowired 
	private NewsDAO newsDAO;
	
	public List<News> getNewsFromIdProjet(int id)
	{
		List<News> res = newsDAO.rechercherNewsParCampagne(id);
		return res;
	}

	public void ajouter(NewsBean news) {
		News n = new News();
		n.setTitle(news.getTitle());
		n.setMessage(news.getMessage());
		n.setPublished(news.getPublished());
		n.setId_user(news.getId_user());
		n.setId_campaign(news.getId_campaign());
		newsDAO.ajouterNews(n);
	}
}
