package com.example.SpringEmployeeform.Service;


import com.example.SpringEmployeeform.Entity.Employee;
import com.example.SpringEmployeeform.Repository.EmployeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.config.ImplementationDetectionConfiguration;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeService {

//    Employee Service Implementation

    @Autowired
    EmployeRepo repo;


    public void addEmp(Employee emp) {
        repo.save(emp);
    }


    public void delEmpById(int id) {
        repo.deleteById(id);
    }

    public List<Employee> getAllEmployee() {
        return repo.findAll();
    }

    public Employee getEmpById(int id) {
        return repo.findById(id).get();
    }

    public void updateEmp(Employee emp) {
        repo.save(emp);
    }
}
