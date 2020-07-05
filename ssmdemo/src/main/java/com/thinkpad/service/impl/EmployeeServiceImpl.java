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
        int i = employeeMapper.addEmployee(employee);
        if (i <= 0){
            return "添加失败";
        }
        return "添加成功";
    }

    public String deleteEmployee(String empName) {
        int i = employeeMapper.deleteEmployee(empName);
        if (i <= 0){
            return "删除失败";
        }
        return "删除成功";
    }

    public Employee queryEmployee(String empName) {
        Employee employee = employeeMapper.queryEmployee(empName);
        return employee;
    }
}
