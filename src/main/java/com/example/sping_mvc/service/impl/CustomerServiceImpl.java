package com.example.sping_mvc.service.impl;

import com.example.sping_mvc.entity.Customer;
import com.example.sping_mvc.repsitory.CustomerRepository;
import com.example.sping_mvc.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerRepository customerRepository;
    @Override
    public void saveCustomer(Customer customer) {
        try{
            customerRepository.save(customer);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

    }

    @Override
    public Customer findCustomerById(Long id) {
        Customer customer=null;
        try {
            Optional<Customer> cust=customerRepository.findById(id);
            if (cust.isPresent()){
                customer=cust.get();
            }

        }catch (Exception e){
            System.err.println(e.getMessage());
        }
        return customer;
    }

    @Override
    public void deleteCustomer(Long customerId) {
       customerRepository.deleteById(customerId);
    }

    @Override
    public void updateCustomer(Customer customer) {
        try {
            if (customerRepository.existsById(customer.getId())){
                customerRepository.save(customer);
            }

        }catch (Exception e){
            System.err.println(e.getMessage());
        }

    }

    @Override
    public Customer getCustomerById(Long customerId) {
        return customerRepository.findById(customerId).orElse(null);
    }

    @Override
    public List<Customer> getAllCustomer() {
        return customerRepository.findAll();
    }

    @Override
    public List<Customer> findCustomerByName(String name) {
        return customerRepository.findCustomerByNameContainingIgnoreCase(name);
    }
}
