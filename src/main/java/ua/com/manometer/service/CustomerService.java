package ua.com.manometer.service;

import ua.com.manometer.model.Customer;
import ua.com.manometer.model.CustomerFilter;

import java.util.List;

public interface CustomerService {

    void addCustomer(Customer customer);

    List<Customer> listCustomer(CustomerFilter filter);

    void removeCustomer(Integer id);

    Customer getCustomer(Integer id);

    List<String> findByShortNameExample(String customerTemplate);

    Customer getCustomerByShortName(String shortName);

    Boolean isCustomerPresent(String customer);
}
