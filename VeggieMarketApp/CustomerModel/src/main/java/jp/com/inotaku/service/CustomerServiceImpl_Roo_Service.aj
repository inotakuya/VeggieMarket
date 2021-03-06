// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package jp.com.inotaku.service;

import java.util.List;
import jp.com.inotaku.domain.Customer;
import jp.com.inotaku.repository.CustomerRepository;
import jp.com.inotaku.service.CustomerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerServiceImpl_Roo_Service {
    
    declare @type: CustomerServiceImpl: @Service;
    
    declare @type: CustomerServiceImpl: @Transactional;
    
    @Autowired
    CustomerRepository CustomerServiceImpl.customerRepository;
    
    public long CustomerServiceImpl.countAllCustomers() {
        return customerRepository.count();
    }
    
    public void CustomerServiceImpl.deleteCustomer(Customer customer) {
        customerRepository.delete(customer);
    }
    
    public Customer CustomerServiceImpl.findCustomer(Long id) {
        return customerRepository.findOne(id);
    }
    
    public List<Customer> CustomerServiceImpl.findAllCustomers() {
        return customerRepository.findAll();
    }
    
    public List<Customer> CustomerServiceImpl.findCustomerEntries(int firstResult, int maxResults) {
        return customerRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void CustomerServiceImpl.saveCustomer(Customer customer) {
        customerRepository.save(customer);
    }
    
    public Customer CustomerServiceImpl.updateCustomer(Customer customer) {
        return customerRepository.save(customer);
    }
    
}
