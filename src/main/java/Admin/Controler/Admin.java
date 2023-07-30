package Admin.Controler;

public class Admin {
	private int id;
	private String fullName,userName,telephone,email,pass;
	public Admin() {
		// TODO Auto-generated constructor stub
	}
	public Admin(String fullName, String userName, String telephone, String email, String pass) {
		super();
		this.fullName = fullName;
		this.userName = userName;
		this.telephone = telephone;
		this.email = email;
		this.pass = pass;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	

}
