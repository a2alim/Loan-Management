package com.exam.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.ApplyLoan;
import com.exam.model.UserInfo;
import com.exam.service.UserInfoService;
@RestController
@RequestMapping(value = "/api/user")
public class UserInfoControllerImpl implements UserInfoController{
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	UserInfoService userInfoService;
	
	@PostMapping(value = "/save")
	@Override
	public UserInfo save(UserInfo entity, BindingResult bindingResult) {
		
		if(!bindingResult.hasErrors()) {
			return userInfoService.save(entity);
		}
		
		return userInfoService.save(entity);
	}

	@Override
	public UserInfo update(UserInfo entity, BindingResult bindingResult) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@GetMapping("/deleteuserinfo/{id}")
	public ModelAndView deleteUserInfo(@PathVariable long id) {
		Map<String, Object> model = new HashMap<>();
		 boolean delete_user = userInfoService.delete(id);
		 
		 if (delete_user) {
				model.put("success", true);
				model.put("msg", "Delete Successful");
				List<UserInfo> entityList  = userInfoService.getAll();
				model.put("userList", entityList);
			return new ModelAndView("pages/aduser-info", model);
			}else {
				model.put("error", false);
				model.put("msg", "Delete failed");
				return new ModelAndView("pages/aduser-info", model);
			}
		 
		
	}
	
	
	@Override
	public String delete(long id) {
		
		return null;
	}
	@GetMapping("/one/{id}")
	@Override
	public UserInfo getById(@PathVariable long id) {
		return  userInfoService.getById(id);
	}

	@Override
	public List<UserInfo> getAll() {
		return null;
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable long id) {
		Map<String, Object> model = new HashMap<>();
		UserInfo entity = userInfoService.getById(id);
		model.put("userEntity", entity);
		return new ModelAndView("pages/adedit-user", model);
	}
	
	@PostMapping("/updateUser")
	public ModelAndView updateUser(HttpServletRequest request) throws ParseException {
		Map<String, Object> model = new HashMap<>();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		String id = request.getParameter("userId");
		long uid=Long.parseLong(id);
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String createDate = request.getParameter("createDate");
		String enabled = request.getParameter("enabled");
		String role = request.getParameter("role");
		
		Date fCDate = null;
		try {
			fCDate = sdf.parse(createDate); 
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		UserInfo userInfo = new UserInfo();
		userInfo.setUserId(uid);
		userInfo.setFirstName(fName);
		userInfo.setLastName(lName);
		userInfo.setEmail(email);
		userInfo.setPhone(phone);
		userInfo.setAddress(address);
		userInfo.setPassword(password);
		userInfo.setUsername(username);
		userInfo.setCreatedDate(fCDate);
		userInfo.setRole(role);
		userInfo.setEnabled(Boolean.parseBoolean(enabled));
		userInfo.setUpdateDate(new Date());
		userInfo = userInfoService.update(userInfo);
		

		if (userInfo != null) {
			model.put("success", true);
			model.put("msg", "Update Successful");
			List<UserInfo> entityList  = userInfoService.getAll();
			model.put("userList", entityList);
			return new ModelAndView("pages/aduser-info", model);
		}else {
			model.put("error", false);
			model.put("msg", "Update failed");
			return new ModelAndView("pages/aduser-info", model);
		}
	}
	
	
	@GetMapping("/userinfo-search")
	public ModelAndView getLoanById(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<>();

		String id = request.getParameter("earchloanId");
		Long userId = Long.parseLong(id);

		UserInfo userInfo = userInfoService.getById(userId);
		model.put("userInfo", userInfo);
		System.out.println(userInfo);
		return new ModelAndView("pages/applyforloan", model);
	}
	
}
