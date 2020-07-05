package com.thinkpad.mapper;

import com.thinkpad.bean.Employee;

public interface EmployeeMapper {
    int addEmployee(Employee employee);

    int deleteEmployee(String name);

    Employee queryEmployee(String empName);
}