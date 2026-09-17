package customerimporter;

import java.util.Arrays;

public class PersistentCustomerSystem extends CustomerSystem {

    private DataBaseSession session;

    // customers

    public void add(Customer aCustomer) {
        session.persist(aCustomer);
    }

    public Customer customerWithIdentificationType(String anIdType, String anIdNumber) {
        return session
            .select(aCustomer -> aCustomer.isIdentifiedAs(anIdType, anIdNumber), Customer.class)
            .iterator().next();
    }

    public int numberOfCustomers() {
        return session.selectAllOfType(Customer.class).size();
    }

    // transactions

    public void beginTransaction() {
        session.beginTransaction();
    }

    public void commit() {
        session.commit();
    }

    // system lifecycle

    public void start() {
        session = DataBaseSession.forConfiguration(Arrays.asList(Address.class, Customer.class));
    }

    public void stop() {
        session.close();
    }
}
