package skc.member.model;

public class MemberDTO {
	
	private String Id;
	private String Nick;
	private String Name;
	private String Pwd;
	private String Pwd2;
	private String Email;
	private String Phone;
	private String Licen;
	private int Level;
	private int Limit;
	
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getNick() {
		return Nick;
	}
	public void setNick(String nick) {
		Nick = nick;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPwd() {
		return Pwd;
	}
	public void setPwd(String pwd) {
		Pwd = pwd;
	}
	public String getPwd2() {
		return Pwd2;
	}
	public void setPwd2(String pwd2) {
		Pwd2 = pwd2;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getLicen() {
		return Licen;
	}
	public void setLicen(String licen) {
		Licen = licen;
	}
	public int getLevel() {
		return Level;
	}
	public void setLevel(int level) {
		Level = level;
	}
	public int getLimit() {
		return Limit;
	}
	public void setLimit(int limit) {
		Limit = limit;
	}

}