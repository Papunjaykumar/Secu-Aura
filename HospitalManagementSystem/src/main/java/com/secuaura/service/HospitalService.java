package com.secuaura.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.secuaura.dao.HospitalDaoImpl;
import com.secuaura.entities.Hospital;

@Component
public class HospitalService {
	@Autowired
	private HospitalDaoImpl hospitalDao;
	
	public void saveHospital(Hospital hospital) {
		this.hospitalDao.createHospital(hospital);
		System.out.println("Hospital has been added to the database");
	}
	
	public boolean getHospitalByNameAndEmail(String hname,String emailid,String password) {
		
		return this.hospitalDao.findByhospitalnameAndemailidAndpassword(hname, emailid, password);
	}
	
	public List<Hospital> getAllHospital(){
		
		return this.hospitalDao.getAllHospital();
	}
	
	public Hospital getHospitalByHnameAndEmailAndPasword(String hname,String emailid,String password) {
		
		return this.hospitalDao.getHospitalByEmailAndPassword(hname, emailid, password);
	}
	

}
