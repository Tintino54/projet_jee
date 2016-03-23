package j2ee.projet.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import j2ee.projet.dao.CampagneDAO;
import j2ee.projet.dao.ParticipationDAO;
import j2ee.projet.domaine.Campagne;
import j2ee.projet.domaine.Participation;

@Service
public class CampagneService {

	@Autowired
	private CampagneDAO campagneDAO;
	
	@Autowired
	private ParticipationDAO participationDAO;

	public void ajouter(Campagne camp) {

	}

	public List<Campagne> getList() {
		List<Campagne> list;
		list = campagneDAO.rechercherCampagne();

		return list;
	}
	
	public Campagne getCampagneFromID(int id) {
		Campagne campagne;
		campagne = campagneDAO.rechercherCampagneParId(id).get(0);
		
		return campagne;
	}

	public List<Participation> getDons(int idprojet) {
		List<Participation> list;
		list = participationDAO.rechercherParticipationParIdProjet(idprojet);
		
		return list;
	}
}
