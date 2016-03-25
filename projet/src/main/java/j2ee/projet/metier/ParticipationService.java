package j2ee.projet.metier;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import j2ee.projet.dao.ParticipationDAO;
import j2ee.projet.domaine.Participation;
import j2ee.projet.web.bean.ParticipantBean;

@Service
@Transactional
public class ParticipationService {
	final static Logger logger = Logger.getLogger(ParticipationService.class);

	@Autowired
	private ParticipationDAO participationDAO;
		
	public List<Participation> rechercherParticipationParIdProjet(int id)
	{
		return participationDAO.rechercherParticipationParIdProjet(id);
	}
	
	public void ajouter(ParticipantBean part) {
		Participation participation = new Participation();
		participation.setId_projet(part.getId_campagne());
		participation.setDateParticipation(part.getDateParticipation());
		participation.setId_user(part.getId_user());
		participation.setDonation(part.getDonation());
		participation.setMessage(part.getMessage());
		participationDAO.ajouterParticipation(participation);
	}
}
