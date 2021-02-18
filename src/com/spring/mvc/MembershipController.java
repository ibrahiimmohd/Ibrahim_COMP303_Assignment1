/*
 * Ibrahim Ali
 * 301022172
 * 18-02-2021
 * */
package com.spring.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MembershipController {
	
	//submit post for index page
	@RequestMapping("/submit")
	public ModelAndView submitForm(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mview = new ModelAndView("show_details");
		
		//initialize mBean from MembershipBean model
		MembershipBean mBean = new MembershipBean();
		
		//get values from index page
		mBean.firstName = request.getParameter("firstName"); 
		mBean.lastName  = request.getParameter("lastName"); 
		mBean.streetAddress  = request.getParameter("streetAddress"); 
		mBean.city  = request.getParameter("city"); 
		mBean.province  = request.getParameter("province"); 
		mBean.postalCode  = request.getParameter("postalCode"); 
		mBean.phoneNumber1  = request.getParameter("phoneNumber1"); 
		mBean.phoneNumber2  = request.getParameter("phoneNumber2"); 
		mBean.phoneNumber3  = request.getParameter("phoneNumber3"); 
		mBean.email  = request.getParameter("email"); 
		mBean.creditCardRadioBtns  = request.getParameter("creditCardRadioBtns"); 
		
		mBean.membershipYearly  = request.getParameter("yearly"); 
		mBean.membershipMonthly  = request.getParameter("monthly"); 
		mBean.membershipWeekly  = request.getParameter("weekly"); 
		
		ArrayList<String> membership = new ArrayList<String>();
		
		if(mBean.getMembershipYearly() != null ) {
			membership.add(mBean.getMembershipYearly());
		}
		if(mBean.getMembershipMonthly() != null ) {
			membership.add(mBean.getMembershipMonthly());
		}
		if(mBean.getMembershipWeekly() != null ) {
			membership.add(mBean.getMembershipWeekly());
		}
		
		//pass value to show_details page
	    mview.addObject("firstName", mBean.getFirstName());
	    mview.addObject("lastName", mBean.getLastName());
	    mview.addObject("streetAddress", mBean.getStreetAddress());
	    mview.addObject("city", mBean.getCity());
	    mview.addObject("province", mBean.getProvince());
	    mview.addObject("postalCode", mBean.getPostalCode());
	    mview.addObject("phoneNumber1", mBean.getPhoneNumber1());
	    mview.addObject("phoneNumber2", mBean.getPhoneNumber2());
	    mview.addObject("phoneNumber3", mBean.getPhoneNumber3());
	    mview.addObject("email", mBean.getEmail());
	    mview.addObject("membership", membership);
	    mview.addObject("creditCardRadioBtns", mBean.getCreditCardRadioBtns());

	    
		return mview;
	}
}
