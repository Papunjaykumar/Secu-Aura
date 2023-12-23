package com.secuaura.dao;

import java.util.List;

import javax.persistence.NamedNativeQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.secuaura.entities.Hospital;

@Component
public class HospitalDaoImpl implements HospitalDao{
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	@Transactional
	public void createHospital(Hospital hospital) {
		// TODO Auto-generated method stub
		System.out.println(hospital);
		this.hibernateTemplate.save(hospital);
	}

	@Override
	public boolean findByhospitalnameAndemailidAndpassword(String hname, String emailid, String password) {
		// TODO Auto-generated method stub
		List<Hospital> hospitals = this.hibernateTemplate.loadAll(Hospital.class);
		for(Hospital h:hospitals) {
			if(h.getEmailid().equals(emailid) && h.getHospitalname().equals(hname) && h.getPassword().equals(password)) {
				return true;
			}
		}
		  return false;
	}

	@Override
	public List<Hospital> getAllHospital() {
		// TODO Auto-generated method stub
		return this.hibernateTemplate.loadAll(Hospital.class);
	}

	@Override
	public Hospital getHospitalByEmailAndPassword(String hname, String emailid, String password) {
		// TODO Auto-generated method stub
		List<Hospital> hospitals = this.hibernateTemplate.loadAll(Hospital.class);
		for(Hospital h:hospitals) {
			if(h.getEmailid().equals(emailid) && h.getHospitalname().equals(hname) && h.getPassword().equals(password)) {
				return h;
			}
		}
		  return null;
	}

	

	
}
