package customerimporter;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

public class TransientCustomerSystem extends CustomerSystem {

    private List<Customer> customers;

    // system lifecycle

    public void start() {
        customers = new ArrayList<>();
    }

    public void stop() {
        customers = null;
    }

    // transactions

    public void beginTransaction() {

    }

    public void commit() {

    }

    // customers

    public void add(Customer aCustomer) {
        customers.add(aCustomer);
    }

    public Customer customerWithIdentificationType(String anIdType, String anIdNumber) {
        for (Customer aCustomer : customers) {
            if (aCustomer.isIdentifiedBy(anIdType, anIdNumber)) return aCustomer;
        }
        throw new NoSuchElementException("Object is not in the collection.");
    }

    public int numberOfCustomers() {
        return customers.size();
    }
}
