package onlineexaminationpackage;

public class examinationmodel {

	private int id;
	private String name;
	private String email;
	private String address;
	private String city;
	private String state;
	private String zipcode;
	private String cardname;
	private String cardnumber;
	private String expmonth;
	private String expyear;
	private String cvv;
	private String amount;

	public examinationmodel(int id, String name, String email, String address, String city, String state,
			String zipcode, String cardname, String cardnumber, String expmonth, String expyear, String cvv,String amount) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.cardname = cardname;
		this.cardnumber = cardnumber;
		this.expmonth = expmonth;
		this.expyear = expyear;
		this.cvv = cvv;
		this.amount = amount;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getCardname() {
		return cardname;
	}

	public void setCardname(String cardname) {
		this.cardname = cardname;
	}

	public String getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	
	public String getexpmonth() {
		return expmonth;
	}

	public void setexpmonth(String expmonth) {
		this.expmonth = expmonth;
	}
	
	public String getexpyear() {
		return expyear;
	}

	public void setexpyear(String expyear) {
		this.expyear = expyear;
	}
	
	public String getcvv() {
		return cvv;
	}

	public void setcvv(String cvv) {
		this.cvv = cvv;
	}
	
	public String getamount() {
		return amount;
	}

	public void setamount(String amount) {
		this.amount = amount;
	}


	
}

