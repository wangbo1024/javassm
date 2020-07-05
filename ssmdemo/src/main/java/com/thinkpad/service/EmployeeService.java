package com.thinkpad.service;

import com.thinkpad.bean.Employee;

public interface EmployeeService {
    String addEmployee(Employee employee);

    String deleteEmployee(String empName);

    Employee queryEmployee(String empName);
}
