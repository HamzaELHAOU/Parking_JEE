package metier;

import java.util.List;

import web.Reservation;
import web.client;
import web.contact;

import web.parkings;

public interface InterfaceclientMetier {
	public void ajouterClient(client c );
	public void contact (contact c);
	public client Loginclient(String email , String code);
	public void modefierClient(client c );
	public List<parkings>listeparc();
    public List<Reservation> listeRéservation(String code);
}
