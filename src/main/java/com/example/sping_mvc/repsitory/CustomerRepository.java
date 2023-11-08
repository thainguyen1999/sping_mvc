package com.example.sping_mvc.repsitory;

import com.example.sping_mvc.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
