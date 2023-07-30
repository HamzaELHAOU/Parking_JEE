package Admin.Dao;

import java.util.List;

import Admin.Controler.Park;

public interface ParkDao {

	
	public List<Park> getAll();
	public void deletePark(int id);
	public Park getPark(int id);
	public void updatePark(Park p,int id);
	public void addPark(Park p);
}
