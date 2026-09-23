package customerimporter;

public class DevelopmentEnvironment extends Environment {

    // current

    public boolean isCurrent() {
        return true;
    }

    // customer system

    public CustomerSystem createCustomerSystem() {
        return new TransientCustomerSystem();
    }
}
