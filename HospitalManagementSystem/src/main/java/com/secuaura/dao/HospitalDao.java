package com.secuaura.dao;

import com.secuaura.entities.Hospital;

public interface HospitalDao {
	public void createHospital(Hospital hospital);
	public boolean findByhospitalnameAndemailidAndpassword(String hname,String emailid,String password);
}
