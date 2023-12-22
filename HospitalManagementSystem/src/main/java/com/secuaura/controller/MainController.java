package com.secuaura.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.secuaura.entities.Hospital;
import com.secuaura.service.HospitalService;

@Controller
public class MainController {
	
	@Autowired
	private HospitalService hospitalService;
	
	@RequestMapping("/")
	public String index() {
		
		return "index";
	}
	@RequestMapping("/registration")
	public String showRegistrationPage() {
		
		return "registration";
	}
	
	@RequestMapping("/login")
	public String showLoginPage() {
		
		return "login";
	}
	
	@RequestMapping(value="/registerHandler",method=RequestMethod.POST)
	public @ResponseBody String handleRegistrationForm(@ModelAttribute("hospital")Hospital hospital,@RequestParam("certificate")CommonsMultipartFile file,HttpSession session,Model model) {
		
		
		System.out.println(file.getOriginalFilename());
		hospital.setCertificate1(file.getOriginalFilename());
		System.out.println(hospital);
//		calling the hospital service layer to save the entity
		this.hospitalService.saveHospital(hospital);
		
		byte[] bytes = file.getBytes();
//		we have to save this file to server
		String realPath = session.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+"certificate"+File.separator+file.getOriginalFilename();
		System.out.println(realPath);
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(realPath);
			fos.write(bytes);
			fos.close();
			System.out.println("File Uploaded");
			model.addAttribute("filename", file.getOriginalFilename());
			model.addAttribute("msg","Uploaded Successfully");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("uploading errors...");
			model.addAttribute("msg","Uploading Error...");
			
		}
		return "Done";
	}
	
//	login hanlde
	@RequestMapping(value="/loginhanlde",method=RequestMethod.POST)
	public @ResponseBody String loginHanldle(@RequestParam("hospitalname")String hospitalname,@RequestParam("emailid")String emailid,@RequestParam("password")String password) {
		if(this.hospitalService.getHospitalByNameAndEmail(hospitalname, emailid, password)) {
			return "done";
		}
		
		return "not done";
	}
	
}
