package com.example.SpringEmployeeform.Repository;

import com.example.SpringEmployeeform.Entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeRepo extends JpaRepository<Employee, Integer> {
//    Employee Repository Interface
}
