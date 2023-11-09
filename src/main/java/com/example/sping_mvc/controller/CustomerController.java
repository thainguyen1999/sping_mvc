package com.example.sping_mvc.controller;

import com.example.sping_mvc.entity.Customer;
import com.example.sping_mvc.repsitory.CustomerRepository;
import com.example.sping_mvc.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/getFormCreateCustomer")
     public  String getFormCreate(ModelMap modelMap){
        String view="createOrUpdateCustomerForm";
        try {
            Customer customer=new Customer();
            modelMap.addAttribute("customer", customer);
        }catch (Exception e){
            System.err.println(e.getMessage());
        }
        return view;
    }
    @PostMapping("/createOrUpdate")
    public String saveOrUpdate(@ModelAttribute("customer") Customer customer,ModelMap modelMap){
        String view="redirect:/customer/getAll";
        try{
            customerService.saveCustomer(customer);

        }catch (Exception e){
            System.out.println(e.getMessage());
        }
        return view;
    }
    @GetMapping("/getAll")
    public String getAll(ModelMap modelMap){
        String view="listCustomer";
        try{
            List<Customer> customer = customerService.getAllCustomer();
            modelMap.addAttribute("customer", customer);
        }catch (Exception e){
            System.err.println(e.getMessage());
        }
        return view;
    }
    @GetMapping("/deleteCustomer/{customerId}")
    public  String deleteCustomer(@PathVariable Long customerId){
        String view="redirect:/customer/getAll";
        try{
            customerService.deleteCustomer(customerId);

        }catch (Exception e){
            System.err.println(e.getMessage());
        }
        return view;
    }
    @GetMapping("/getFormUpdate/{customerId}")
    public String getForm(@PathVariable Long customerId,ModelMap modelMap){
        String view="createOrUpdateCustomerForm";
        try {
            Customer customer=customerService.getCustomerById(customerId);
            modelMap.addAttribute("customer", customer);

        }catch (Exception e){
            System.err.println(e.getMessage());

        }
        return view;
    }
    @PostMapping("/update/{customerId}")
    public String updateCustomer(@PathVariable Long customerId,@ModelAttribute("customer")Customer customer,ModelMap modelMap){
        String view="redirect:/customer/getAll";
        try{
            customer.setId(customerId);
            customerService.saveCustomer(customer);

        }catch (Exception e){
            System.err.println(e.getMessage());

        }
        return view;
    }
    @PostMapping ("/findCustomerByName")
    public String findCustomer(@RequestParam String name, ModelMap model){
        String view="listCustomer";
        try{
            List<Customer> searchResults= customerService.findCustomerByName(name);
            model.addAttribute("customer", searchResults);
        }catch (Exception e){
            System.err.println(e.getMessage());
        }
        return view;
    }


}
