package customerimporter;

import java.util.Arrays;
import java.util.NoSuchElementException;

public abstract class Environment {

    // current

    public static Environment current() {
        for (Environment anEnvironment : Arrays.asList(new DevelopmentEnvironment(), new IntegrationEnvironment())) {
            if (anEnvironment.isCurrent()) return anEnvironment;
        }
        throw new NoSuchElementException("Object is not in the collection.");
    }

    public abstract boolean isCurrent();

    // customer system

    public abstract CustomerSystem createCustomerSystem();
}
