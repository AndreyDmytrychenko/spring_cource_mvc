package com.andreydm.spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.validation.Valid;


@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

//    @RequestMapping("/askDetails")
//    public String askEmployeeDetails() {
//        return "ask-employee-details-view";
//    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
        model.addAttribute("employee", new Employee());
        return "ask-employee-details-view";
    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model) {
//        String name = "Mr. " + request.getParameter("employeeName");
//        model.addAttribute("nameAttribute", name);
//        return "show-employee-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(@RequestParam("employeeName") String empName, Model model) {
//        String name = "Mr. " + empName;
//        model.addAttribute("nameAttribute", name);
//        return "show-employee-details-view";
//    }

    @PostMapping("/showDetails")
    public String showEmpDetails(@ModelAttribute("employee") @Valid Employee employee,
                                 BindingResult result) {
            if (result.hasErrors()) {
                return "ask-employee-details-view";
            } else {
                return "show-employee-details-view";
            }

    }
}
