package models;
import javax.persistence.*;

@Entity
@Table(name ="admin")
public class admin {
	@Id
	@GeneratedValue
	private Integer id_ad;
	
	@Column
	private String UserName_ad;
	
	@Column 
	private String Password_ad;

	public Integer getId_ad() {
		return id_ad;
	}

	public void setId_ad(Integer id_ad) {
		this.id_ad = id_ad;
	}

	public String getUserName_ad() {
		return UserName_ad;
	}

	public void setUserName_ad(String userName_ad) {
		UserName_ad = userName_ad;
	}

	public String getPassword_ad() {
		return Password_ad;
	}

	public void setPassword_ad(String password_ad) {
		Password_ad = password_ad;
	}

	
}
