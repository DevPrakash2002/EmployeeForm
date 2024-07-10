package com.example.SpringEmployeeform.Entity;


import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "Employee")
public class Employee {

//    Entity Creation for Employees

    @Id
    private int empId;

    private String empName;
    private String empPosition;
    private String department;
}
