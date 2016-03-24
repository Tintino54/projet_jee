package j2ee.projet.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import j2ee.projet.dao.NewsDAO;
import j2ee.projet.domaine.News;

@Service
public class NewsService {
	
	@Autowired 
	private NewsDAO newsDAO;
	
	public List<News> getNewsFromIdProjet(int id)
	{
		List<News> res = newsDAO.rechercherNewsParCampagne(id);
		return res;
	}

	public void ajouter(News news) {
		newsDAO.ajouterNews(news);
	}
}
