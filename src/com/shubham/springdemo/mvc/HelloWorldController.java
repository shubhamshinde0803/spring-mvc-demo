package com.shubham.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {
	
	//need a controller method to show form
	@RequestMapping("showForm")
	public String showForm() {
		return "helloWorld-form";
	}
	
	//need a controller method to process form
	@RequestMapping("processForm")
	public String processForm() {
		return "helloWorld";
	}
	
	//new controller to add data to model
	@RequestMapping("processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		
		//read the request Parameter from the HTML form
		String theName = request.getParameter("studentName");
		
		//convert to upperCase
		theName = theName.toUpperCase();
		
		//add some message
		String result = "Hello! " + theName;
		
		//add data to model
		model.addAttribute("message", result);
		
		return "helloWorld";
	}

}
