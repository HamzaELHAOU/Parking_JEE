package Admin.Dao;

import java.util.List;

import Admin.Controler.Reser;
import Admin.Controler.Reservation;


public interface ReservationDao {

	public List<Reservation> getAll();
	public void deleteReservation(int id);
	public Reservation getReservation(int id);
	public void updateReservation(Reservation r,int id);
	public void addReservation(Reservation r);
	public List<Reser> getAllR();
}
