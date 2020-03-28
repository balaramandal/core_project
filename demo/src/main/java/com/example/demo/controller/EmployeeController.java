package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Employee;
import com.example.demo.service.EmployeeService;

@RestController
@RequestMapping("/employee")
public class EmployeeController {
	@Autowired EmployeeService employeeService;
	@RequestMapping("/save")
	public String saveEmployee(@RequestBody Employee employee) {
		employeeService.save(employee);
		System.out.println(employee);
		return "success";
	}
}
