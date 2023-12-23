package com.secuaura.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.servlet.view.RedirectView;

import com.secuaura.entities.Hospital;
import com.secuaura.service.HospitalService;

@Controller
public class MainController {
	
	@Autowired
	private HospitalService hospitalService;
	
	@RequestMapping("/")
	public RedirectView index() {
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl("registration");
		return redirectView;
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
	public String loginHanldle(@RequestParam("hospitalname")String hospitalname,@RequestParam("emailid")String emailid,@RequestParam("password")String password,HttpSession session) {
		if(this.hospitalService.getHospitalByNameAndEmail(hospitalname, emailid, password)) {
			Hospital hospital = this.hospitalService.getHospitalByHnameAndEmailAndPasword(hospitalname, emailid, password);
			session.setAttribute("hospital", hospital);
			return "capture_image";
		}
		
		return "login";
	}
	
//	detail page after login
	@RequestMapping("/show_detail")
	public String detailShow(Model model) {
		
		List<Hospital> allHospital = this.hospitalService.getAllHospital();
		model.addAttribute("hospitals", allHospital);
		return "detail_page";
	}
	
//	logout end point
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		session.removeAttribute("hospital");
		
		return "redirect:/login";
	}
	@RequestMapping("/search")
	public String searchByName(@RequestParam("search")String name,Model model) {
		List<Hospital> allHospital = this.hospitalService.getAllHospital();
		List<Hospital> ans=new ArrayList<>();
		for(Hospital hp:allHospital) {
			if(hp.getHospitalname().equals(name)) {
				ans.add(hp);
			}
		}
		model.addAttribute("hospitals",ans);
		
		return "detail_page";
		
	}
	
	@RequestMapping("/sortbyname")
	public String sortDtlByName(Model model) {
		List<Hospital> allHospital = this.hospitalService.getAllHospital();
		Collections.sort(allHospital, (o1, o2) -> (o1.getHospitalname().compareTo(o2.getHospitalname())));
		model.addAttribute("hospitals", allHospital);
		return "detail_page";
	}
	
	@RequestMapping("/sortbydate")
	public String sortDtlByDate(Model model) {
		List<Hospital> allHospital = this.hospitalService.getAllHospital();
		Collections.sort(allHospital, (o1, o2) -> (o1.getHospitalregdate().compareTo(o2.getHospitalregdate())));
		model.addAttribute("hospitals", allHospital);
		return "detail_page";
	}
	
}
