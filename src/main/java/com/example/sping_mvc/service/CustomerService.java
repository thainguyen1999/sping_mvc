package com.example.sping_mvc.service;

import com.example.sping_mvc.entity.Customer;

import java.util.List;

public interface CustomerService {
     void saveCustomer(Customer customer);
    Customer findCustomerById(Long id);
    void deleteCustomer(Long customerId);
    void updateCustomer(Customer customer);
    Customer getCustomerById(Long customerId);
    List<Customer> getAllCustomer();
    List<Customer> findCustomerByName(String name);
}
