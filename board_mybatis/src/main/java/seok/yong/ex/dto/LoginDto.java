package seok.yong.ex.dto;

public class LoginDto {

	private String Id;
	private String Pw;
	private String Name;
	
	

	public LoginDto(String id, String pw, String name) {
		Id = id;
		Pw = pw;
		Name = name;
	}


	public String getId() {
		return Id;
	}


	public void setId(String id) {
		Id = id;
	}


	public String getPw() {
		return Pw;
	}


	public void setPw(String pw) {
		Pw = pw;
	}


	public String getName() {
		return Name;
	}


	public void setName(String name) {
		Name = name;
	}


	public LoginDto() {
		// TODO Auto-generated constructor stub
	}

}
