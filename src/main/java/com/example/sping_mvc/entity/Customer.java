package com.example.sping_mvc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "customer")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;
private String name;
private Integer age;
private String address;
}
