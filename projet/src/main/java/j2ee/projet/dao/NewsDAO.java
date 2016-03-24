package j2ee.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.domaine.News;

@Repository
@Transactional
public class NewsDAO extends BaseDAO<News> {

	final static Logger logger = Logger.getLogger(NewsDAO.class);

	public List<News> rechercherNewsParCampagne(int id) {
		if (getEntityManager() == null)
			logger.info("entityManager null");
		TypedQuery<News> query = getEntityManager().createNamedQuery("rechercherNewsParCampagne", News.class);
		query.setParameter("id_campaign", id);
		return query.getResultList();
	}

	public void ajouterNews(News news) {
		try {
			insert(news);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
