package vgbox.vgboxDB.VO;
// vgbox.vgboxDB.VO.Member
public class Member {
	private String id;
	private String grade_name;
	private String password;
	private String name;
	private String address;
	private String contact;
	private String auth;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Member(String id, String grade_name, String password, String name, String address, String contact,
			String auth) {
		super();
		this.id = id;
		this.grade_name = grade_name;
		this.password = password;
		this.name = name;
		this.address = address;
		this.contact = contact;
		this.auth = auth;
	}

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}

	public Member(String id) {
		super();
		this.id = id;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}


	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}


}
