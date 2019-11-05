package com.exam.controller;

import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAccessor;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.ApplyLoan;
import com.exam.model.Installment;
import com.exam.service.ApplyLoanServiceImpl;
import com.exam.service.InstallmentServiceImpl;

@Controller
public class InslallmentCtrl {

	@Autowired
	InstallmentServiceImpl installmentServiceImpl;

	@Autowired
	ApplyLoanServiceImpl applyLoanServiceImpl;

	@GetMapping(value = "/user-installment")
	public ModelAndView userInstallment() {
		return new ModelAndView("/pages/user-installment");
	}

	@GetMapping(value = "/installment-status")
	public ModelAndView installmentStatus() {
		return new ModelAndView("pages/installment-status");
	}

	
	
	@PostMapping("/save-installment")
	public ModelAndView createLoan(HttpServletRequest request) {

		Map<String, Object> model = new HashMap<>();

		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String loanId = request.getParameter("loanId");
		String loanAmount = request.getParameter("loanAmount");
		String paybleInstallment = request.getParameter("paybleInstallment");
		String installmentAmount = request.getParameter("installmentAmount");
		String category = request.getParameter("category");

		List<Installment> installmentList = (List<Installment>) installmentServiceImpl.getByLoanId(Long.parseLong(loanId));

		Long totalPaid=0L;
		for (Installment installment : installmentList) {
			totalPaid += installment.getInstallmentAmount();
		}
		Long totalPayable= Long.parseLong(loanAmount)-totalPaid;

		Installment installment = new Installment();

		installment.setName(name);
		installment.setUsername(username);
		installment.setEmail(email);
		installment.setAddress(address);
		installment.setLoanAmount(Long.parseLong(loanAmount));
		installment.setLoanId(Long.parseLong(loanId));
		installment.setInstallmentAmount(Long.parseLong(installmentAmount));
		installment.setCategory(category);
		installment.setInstallmentDate(new Date());
		installment.setTotalPaid(totalPaid);
		installment.setTotalPayable(totalPayable);
		installment.setInstallmentDate(new Date());
		
		
		installment = installmentServiceImpl.save(installment);
		if (installment != null) {
			model.put("success", "success");
			model.put("msg", "Succesfully Paid Istallment.");
			model.put("installment", installment);
			return new ModelAndView("pages/user-installment", model);
		}

		return new ModelAndView("pages/user-installment", model);
	}

	
	@GetMapping("/adsearch-installment")
	public ModelAndView getInstallmentById(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<>();

		String id = request.getParameter("searchloanId");
		Long installmentId = Long.parseLong(id);
		ApplyLoan applyLoan = applyLoanServiceImpl.getById(Long.parseLong(id));
		List<Installment> installmentList =(List<Installment>) installmentServiceImpl.getByLoanId(installmentId);
		
		if (!installmentList.isEmpty() && !applyLoan.toString().isEmpty()) {
			
			model.put("installmentListView", installmentList);
			model.put("totalInstallment", applyLoan.getTotalInstallment());
			return new ModelAndView("pages/admanage-installment", model);
		}else {
			model.put("msg", "Loan ID not found. Please try again.");
			return new ModelAndView("pages/admanage-installment", model);
		}
		
		
	}
	
	
	
	@GetMapping("/loaninfo-search")
	public ModelAndView getLoanById(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<>();

		String id = request.getParameter("earchloanId");
		Long loanId = Long.parseLong(id);

		ApplyLoan loaninfo = applyLoanServiceImpl.getById(loanId);
		model.put("loaninfo", loaninfo);
		System.out.println(loaninfo);
		return new ModelAndView("pages/user-installment", model);
	}
	
	
	@GetMapping("/get-installment-status")
	public ModelAndView getInstallmentStatusById(HttpServletRequest request) {
		Map<String, Object> model = new HashMap<>();

		String id = request.getParameter("earchloanId");
		Long loanId = Long.parseLong(id);

		List<Installment> installmentList = installmentServiceImpl.getByLoanId(loanId);
		
		model.put("installmentList", installmentList);
		return new ModelAndView("pages/installment-status", model);
	}

}
