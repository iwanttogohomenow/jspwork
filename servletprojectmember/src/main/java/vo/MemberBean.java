package vo;

public class MemberBean {
	private String MEMBER_ID; //admin
	private String MEMBER_PW; //1234
	private String MEMBER_NAME;
	private int MEMBER_AGE;
	private String MEMBER_GENDER;
	private String MEMBER_EMAIL;
	
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	
	public void setMEMBER_ID(String member_id) {
		this.MEMBER_ID = member_id;
	}
	
	public String getMEMBER_PW() {
		return MEMBER_PW;
	}
	
	public void setMEMBER_PW(String member_pw) {
		this.MEMBER_PW = member_pw;
	}
	
	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}
	
	public void setMEMBER_NAME(String member_name) {
		this.MEMBER_NAME = member_name;
	}
	
	public int getMEMBER_AGE() {
		return MEMBER_AGE;
	}
	
	public void setMEMBER_AGE(int member_age) {
		this.MEMBER_AGE = member_age;
	}
	
	public String getMEMBER_GENDER() {
		return MEMBER_GENDER;
	}
	
	public void setMEMBER_GENDER(String member_gender) {
		this.MEMBER_GENDER = member_gender;
	}
	
	public String getMEMBER_EMAIL() {
		return MEMBER_EMAIL;
	}
	
	public void setMEMBER_EMAIL(String member_email) {
		this.MEMBER_EMAIL = member_email;
	}
}
