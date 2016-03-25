package j2ee.projet.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import j2ee.projet.domaine.News;

@Repository
public class NewsDAO extends BaseDAO<News> {

	final static Logger logger = Logger.getLogger(NewsDAO.class);

	@SuppressWarnings("unchecked")
	public List<News> rechercherNewsParCampagne(int id) {
		if (getSessionFactory() == null) {
			logger.info("sessionFactory null");
			return null;
		} else {
			Session session = getSession();
			Transaction tx = session.beginTransaction();
			Query query = session.getNamedQuery("rechercherNewsParCampagne");
			query.setParameter("id_campaign", id);
			List<News> res = query.list();
			tx.commit();
			return res;
		}
	}

	public void ajouterNews(News news) {
		try {
			insert(news);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
