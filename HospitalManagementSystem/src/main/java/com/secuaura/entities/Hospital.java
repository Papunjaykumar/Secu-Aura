package com.secuaura.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Hospital_Dtls")
public class Hospital {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int hid;
	private String hospitalname;
	@Column(unique = true)
	private String emailid;
	private String address;
	@Column(unique = true)
	private String phonenumber;
	private String city;
	@Column(unique = true)
	private String regnumber;
	private String State;
	private String emgnumber;
	private String pincode;
	private String certificate1;
	private String hospitalregdate;
	private String password;
	private int numofambulance;
	private String cnfpassword;
	public Hospital() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Hospital(int hid, String hospitalname, String emailid, String address, String phonenumber, String city,
			String regnumber, String state, String emgnumber, String pincode, String certificate1,
			String hospitalregdate, String password, int numofambulance, String cnfpassword) {
		super();
		this.hid = hid;
		this.hospitalname = hospitalname;
		this.emailid = emailid;
		this.address = address;
		this.phonenumber = phonenumber;
		this.city = city;
		this.regnumber = regnumber;
		State = state;
		this.emgnumber = emgnumber;
		this.pincode = pincode;
		this.certificate1 = certificate1;
		this.hospitalregdate = hospitalregdate;
		this.password = password;
		this.numofambulance = numofambulance;
		this.cnfpassword = cnfpassword;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getHospitalname() {
		return hospitalname;
	}
	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getRegnumber() {
		return regnumber;
	}
	public void setRegnumber(String regnumber) {
		this.regnumber = regnumber;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getEmgnumber() {
		return emgnumber;
	}
	public void setEmgnumber(String emgnumber) {
		this.emgnumber = emgnumber;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getCertificate1() {
		return certificate1;
	}
	public void setCertificate1(String certificate1) {
		this.certificate1 = certificate1;
	}
	public String getHospitalregdate() {
		return hospitalregdate;
	}
	public void setHospitalregdate(String hospitalregdate) {
		this.hospitalregdate = hospitalregdate;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getNumofambulance() {
		return numofambulance;
	}
	public void setNumofambulance(int numofambulance) {
		this.numofambulance = numofambulance;
	}
	public String getCnfpassword() {
		return cnfpassword;
	}
	public void setCnfpassword(String cnfpassword) {
		this.cnfpassword = cnfpassword;
	}
	@Override
	public String toString() {
		return "Hospital [hid=" + hid + ", hospitalname=" + hospitalname + ", emailid=" + emailid + ", address="
				+ address + ", phonenumber=" + phonenumber + ", city=" + city + ", regnumber=" + regnumber + ", State="
				+ State + ", emgnumber=" + emgnumber + ", pincode=" + pincode + ", certificate1=" + certificate1
				+ ", hospitalregdate=" + hospitalregdate + ", password=" + password + ", numofambulance="
				+ numofambulance + ", cnfpassword=" + cnfpassword + "]";
	}

	
	

}
