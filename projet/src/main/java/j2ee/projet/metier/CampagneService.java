package j2ee.projet.metier;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.dao.CampagneDAO;
import j2ee.projet.dao.ParticipationDAO;
import j2ee.projet.domaine.Campagne;
import j2ee.projet.domaine.Participation;
import j2ee.projet.web.bean.CampagneBean;

@Service
@Transactional
public class CampagneService {
	final static Logger logger = Logger.getLogger(CampagneService.class);

	@Autowired
	private CampagneDAO campagneDAO;

	@Autowired
	private ParticipationDAO participationDAO;

	public void ajouter(CampagneBean camp) {
		Campagne campagne = new Campagne();
		campagne.setTitle(camp.getTitle());
		campagne.setExpectedamount(camp.getExpectedamount());
		campagne.setDeadline(camp.getDeadline());
		campagne.setDescription(camp.getDescription());
		campagne.setId_user(camp.getId_user());
		campagne.setImagePath(camp.getImagePath());
		campagne.setResume(camp.getResume());
		campagneDAO.ajouterCampagne(campagne);
	}

	public List<Campagne> getList() {
		List<Campagne> list;
		list = campagneDAO.rechercherCampagne();

		return list;
	}

	public Campagne rechercherCampagneParId(int id) {
		Campagne campagne;
		campagne = campagneDAO.rechercherCampagneParId(id);
		if (campagne == null) {
			logger.info("Resultat de la requete rechercherCampagneParId("+id+") == null");
			return null;
		} else {
			return campagne;
		}
	}

	public List<Participation> getDons(int idprojet) {
		List<Participation> list;
		list = participationDAO.rechercherParticipationParIdProjet(idprojet);

		return list;
	}
}
