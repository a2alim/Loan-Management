package com.exam.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.sound.midi.Soundbank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.UserInfo;
import com.exam.service.UserInfoService;

@Controller
public class HomeController {
	@Autowired
	UserInfoService userInfoService;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@GetMapping(value = "/")
	public ModelAndView home() {
		return new ModelAndView("index");
	}	
	@GetMapping(value = "/home")
	public ModelAndView dashboard() {
		return new ModelAndView("index");
	}
	@GetMapping(value = "/applyforloan")
	public ModelAndView aplyforloan() {
		return new ModelAndView("pages/applyforloan");
	}
	@GetMapping(value = "/managerlogin")
	public ModelAndView managerlogin() {
		return new ModelAndView("pages/managerlogin");
	}
	@GetMapping(value = "/adminlogin")
	public ModelAndView adminlogin() {
		return new ModelAndView("pages/adminlogin");
	}
	@GetMapping(value = "/about")
	public ModelAndView about() {
		return new ModelAndView("pages/about");
	}

	@GetMapping(value = "/registration")
	public ModelAndView registration() {
		return new ModelAndView("/pages/registration");
	}

	@GetMapping(value = "/contactus")
	public ModelAndView contactus() {
		return new ModelAndView("/pages/contactus");
	}
	@GetMapping(value = "/adminhome")
	public ModelAndView adminhome() {
		return new ModelAndView("/pages/adminhome");
	}
	@GetMapping(value = "/userregistration")
	public ModelAndView userregistration() {
		return new ModelAndView("pages/user-registration");
	}
	@GetMapping(value = "/adcreate-user")
	public ModelAndView adminCreateUser() {
		return new ModelAndView("/pages/adcreate-user");
	}
	@GetMapping(value = "/admanage-installment")
	public ModelAndView adminManageInstallment() {
		return new ModelAndView("/pages/admanage-installment");
	}
	@GetMapping(value = "/errorpage")
	public ModelAndView errorPage() {
		return new ModelAndView("/pages/aderror-page");
	}
	@GetMapping(value = "/blankpage")
	public ModelAndView blankpage() {
		return new ModelAndView("/pages/blank-page");
	}
	
	
	@GetMapping(value = "/compose-email")
	public ModelAndView composeMaail() {
		return new ModelAndView("/pages/adcompose-email");
	}
	
	@PostMapping(value = "/save")
	public ModelAndView registration(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<>();
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String createDate = request.getParameter("createDate");
		String role = request.getParameter("role");
		String address = request.getParameter("address");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String enabled = request.getParameter("enabled");
		UserInfo userInfo = new UserInfo();

		userInfo.setFirstName(fName);
		userInfo.setLastName(lName);
		userInfo.setEmail(email);
		userInfo.setPhone(phone);
		userInfo.setAddress(address);
		userInfo.setUsername(username);
		userInfo.setPassword(passwordEncoder.encode(password));
		userInfo.setCreatedDate(new Date());
		userInfo.setRole(role);
		userInfo.setEnabled(true);


		userInfo = userInfoService.save(userInfo);
		if (userInfo != null) {
			model.put("success", true);
			model.put("msg", "Registration Successful");
			return new ModelAndView("login", model);
		} else {
			model.put("error", false);
			model.put("message", "Save failed");
			return new ModelAndView("pages/registration", model);
		}

	}
	
	@PostMapping(value = "/aduser-save")
	public ModelAndView adRegistration(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<>();
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String createDate = request.getParameter("createDate");
		String role = request.getParameter("role");
		String address = request.getParameter("address");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String enabled = request.getParameter("enabled");
		UserInfo userInfo = new UserInfo();

		userInfo.setFirstName(fName);
		userInfo.setLastName(lName);
		userInfo.setEmail(email);
		userInfo.setPhone(phone);
		userInfo.setAddress(address);
		userInfo.setUsername(username);
		userInfo.setPassword(passwordEncoder.encode(password));
		userInfo.setCreatedDate(new Date());
		userInfo.setRole(role);
		userInfo.setEnabled(true);


		userInfo = userInfoService.save(userInfo);
		if (userInfo != null) {
			model.put("success", true);
			model.put("msg", "Registration Successful");
			return new ModelAndView("pages/adcreate-user", model);
		} else {
			model.put("error", false);
			model.put("message", "Save failed");
			return new ModelAndView("pages/adcreate-user", model);
		}

	}
	
	@GetMapping("/userinfo")
	public ModelAndView showAll() {
		Map<String, Object> model = new HashMap<>();
		List<UserInfo> userInfolist = userInfoService.getAll();
		model.put("userList", userInfolist);
		return new ModelAndView("pages/aduser-info", model);
	}

	
}
