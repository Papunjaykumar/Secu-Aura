package com.secuaura.dao;

import java.util.List;

import com.secuaura.entities.Hospital;

public interface HospitalDao {
	public void createHospital(Hospital hospital);
	public boolean findByhospitalnameAndemailidAndpassword(String hname,String emailid,String password);
	public Hospital getHospitalByEmailAndPassword(String hname,String emailid,String password);
	public List<Hospital> getAllHospital();
}
