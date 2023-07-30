package Admin.Dao;

import java.util.List;

import Admin.Controler.User;

public interface UserDao {
	
	public List<User> getAll();
	public void deleteUser(String cne);
	public User getUser(String cne);
	public void updateUser(User u,String cne);
	public void addUser(User u);

}
