package com.example.SpringEmployeeform.Controller;


import com.example.SpringEmployeeform.Entity.Employee;
import com.example.SpringEmployeeform.Service.EmployeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.config.ImplementationDetectionConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.logging.Handler;

@Controller
public class EmployeeController {
//    Employee Web Controller

    @Autowired
    EmployeService Service;

//    Home Page Implementation
    @GetMapping({"/","/home"})
    public String home() {
        return "home";
    }


//    Employee Show All
    @RequestMapping("Employee")
    public String Employee(Model model) {
        model.addAttribute("emp", Service.getAllEmployee());
        return "Employee";
    }

//    Add Employee ImplementationDetectionConfiguration
    @RequestMapping("addEmp")
    public String addEmp() {
        return "addEmployee";
    }

//    Edit Employee Implementation
    @RequestMapping("editEmp")
    public String editEmp(Model model, @RequestParam int id) {
        Employee emp = Service.getEmpById(id);
        model.addAttribute("employee", emp);
        System.out.println(emp.toString());
        return "editEmployee";
    }

//    Delete Implementation
    @RequestMapping("deleteEmp")
    public String deleteEmp(@RequestParam int id) {
        Service.delEmpById(id);
        return "redirect:/Employee";
    }

//    Edit Form Handler
    @PostMapping("editForm")
    public String editForm(@ModelAttribute("emp") Employee emp) {
        Service.updateEmp(emp);
        return "redirect:/Employee";
    }

//    Add Form Handler
    @PostMapping("handleForm")
    public String handleForm(@ModelAttribute("emp") Employee emp) {
        Service.addEmp(emp);
        return "redirect:/Employee";
    }


}
