package com.thinkpad.controller;

import com.thinkpad.service.EmployeeService;
import com.thinkpad.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkpad.bean.Employee;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	@RequestMapping("/addEmployee")
	@ResponseBody
	public String addEmployee(Employee employee){
		String result = employeeService.addEmployee(employee);
		return JsonUtils.objectToJson(result);
	}

	@RequestMapping("/deleteEmployee")
	@ResponseBody
	public String deleteEmployee(String empName){
		String result = employeeService.deleteEmployee(empName);
		return JsonUtils.objectToJson(result);
	}
	@RequestMapping("/queryEmployee")
	@ResponseBody
	public String queryEmployee(String empName){
		Employee result = employeeService.queryEmployee(empName);
		if (result == null){
			return "查无此人";
		}
		System.out.println(result);
		System.out.println(JsonUtils.objectToJson(result));
		return JsonUtils.objectToJson(result);
	}
}
