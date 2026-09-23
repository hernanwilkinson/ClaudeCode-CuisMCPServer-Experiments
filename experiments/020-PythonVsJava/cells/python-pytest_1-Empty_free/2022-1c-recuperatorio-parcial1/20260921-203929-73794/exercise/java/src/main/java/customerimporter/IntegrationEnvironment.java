package customerimporter;

public class IntegrationEnvironment extends Environment {

    // current

    public boolean isCurrent() {
        return !new DevelopmentEnvironment().isCurrent();
    }

    // customer system

    public CustomerSystem createCustomerSystem() {
        return new PersistentCustomerSystem();
    }
}
