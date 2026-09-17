package customerimporter;

public abstract class CustomerSystem {

    // customers

    public abstract void add(Customer aCustomer);

    public abstract Customer customerWithIdentificationType(String anIdType, String anIdNumber);

    public abstract int numberOfCustomers();

    // transactions

    public abstract void beginTransaction();

    public abstract void commit();

    // system lifecycle

    public abstract void start();

    public abstract void stop();
}
