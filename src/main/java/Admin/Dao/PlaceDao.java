package Admin.Dao;

import java.util.List;

import Admin.Controler.Place;

public interface PlaceDao {

	
	
	public List<Place> getAll();
	public List<Place> getAllById(int idPark);
	public void deletePlace(int id);
	public Place getPlace(int id);
	public void updatePlace(Place p,int id);
	public void addPlace(Place p);
}
