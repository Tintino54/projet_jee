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

		/*
		 * list = new ArrayList<Campagne>(); SecureRandom random = new
		 * SecureRandom(); for (int i = 0; i < 20; i++) { Campagne c = new
		 * Campagne(); c.setTitle("tototototootot");
		 * c.setDescription("aubergineuuuuuuuuuuuh");
		 * c.setExpectedamount(Double.parseDouble(new BigInteger(10,
		 * random).toString()));
		 * 
		 * Calendar cal = Calendar.getInstance(); cal.set(1991, 01, 11); Date d
		 * = new Date(cal.getTimeInMillis()); c.setDeadline(d);
		 * 
		 * list.add(c); }
		 */
		list = campagneDAO.rechercherCampagne();

		return list;
	}
	
	public Campagne getCampagneFromID(int id) {
		Campagne campagne;

		campagne = campagneDAO.rechercherCampagneParId(id).get(0);
		/*list = new ArrayList<Campagne>();
		SecureRandom random = new SecureRandom();
		for (int i = 0; i < 83; i++) {
			Campagne c = new Campagne();
			c.setTitle(new BigInteger(10, random).toString(10));
			c.setDescription(new BigInteger(10, random).toString(10));
			c.setExpectedamount(Double.parseDouble(new BigInteger(2, random).toString()));

			Calendar cal = Calendar.getInstance();
			cal.set(1991, 01, 11);
			Date d = new Date(cal.getTimeInMillis());
			c.setDeadline(d);
			list.add(c);
		}*/
		return campagne;
	}

	public List<Participation> getDons(int idprojet) {
		List<Participation> list;

		list = participationDAO.rechercherParticipationParIdProjet(idprojet);
		/*list = new ArrayList<Campagne>();
		SecureRandom random = new SecureRandom();
		for (int i = 0; i < 83; i++) {
			Campagne c = new Campagne();
			c.setTitle(new BigInteger(10, random).toString(10));
			c.setDescription(new BigInteger(10, random).toString(10));
			c.setExpectedamount(Double.parseDouble(new BigInteger(2, random).toString()));

			Calendar cal = Calendar.getInstance();
			cal.set(1991, 01, 11);
			Date d = new Date(cal.getTimeInMillis());
			c.setDeadline(d);
			list.add(c);
		}*/
		return list;
	}
}
