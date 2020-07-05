package com.thinkpad.service.impl;

import com.thinkpad.bean.Employee;
import com.thinkpad.mapper.EmployeeMapper;
import com.thinkpad.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeMapper employeeMapper;
    public String addEmployee(Employee employee) {
        return "添加成功";
    }
}
