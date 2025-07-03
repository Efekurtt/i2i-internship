
package com.example.swaggerex.service;

import com.example.swaggerex.dto.CustomerDTO;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.concurrent.atomic.AtomicLong;

@Service
public class CustomerService {

    private final Map<Long, CustomerDTO> customerMap = new HashMap<>();
    private final AtomicLong idCounter = new AtomicLong(1);

  
    public CustomerDTO createCustomer(CustomerDTO customerDTO) {
        Long id = idCounter.getAndIncrement();
        customerDTO.setId(id);
        customerMap.put(id, customerDTO);
        return customerDTO;
    }


    public List<CustomerDTO> getAllCustomers() {
        return new ArrayList<>(customerMap.values());
    }


    public Optional<CustomerDTO> getCustomerById(Long id) {
        return Optional.ofNullable(customerMap.get(id));
    }


    public Optional<CustomerDTO> updateCustomer(Long id, CustomerDTO customerDTO) {
        if (customerMap.containsKey(id)) {
            customerDTO.setId(id);
            customerMap.put(id, customerDTO);
            return Optional.of(customerDTO);
        }
        return Optional.empty();
    }


    public boolean deleteCustomer(Long id) {
        return customerMap.remove(id) != null;
    }
}
