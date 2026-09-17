package customerimporter;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

public class DataBaseSession {

    private List<Class<?>> configuration;
    private Map<Class<?>, Set<Object>> tables;
    private int id;

    // instance creation

    public static DataBaseSession forConfiguration(List<Class<?>> aConfiguration) {
        return new DataBaseSession(aConfiguration);
    }

    // initialization

    private DataBaseSession(List<Class<?>> aConfiguration) {
        configuration = aConfiguration;
        tables = new HashMap<>();
        id = 0;
    }

    // transaction management

    public void beginTransaction() {

    }

    public void commit() {
        for (Object aCustomer : tables.getOrDefault(Customer.class, Collections.emptySet())) persistAddressesOf((Customer) aCustomer);
    }

    // closing

    public void close() {

    }

    // persistence - private

    private void defineIdOf(Object anObject) {
        try {
            Field idField = anObject.getClass().getDeclaredField("id");
            idField.setAccessible(true);
            idField.set(anObject, newIdFor(anObject));
        } catch (ReflectiveOperationException aReflectiveOperationException) {
            throw new RuntimeException(aReflectiveOperationException);
        }
    }

    private void delay() {
        try {
            Thread.sleep(100);
        } catch (InterruptedException anInterruptedException) {
            throw new RuntimeException(anInterruptedException);
        }
    }

    @SuppressWarnings("unchecked")
    private <T> Collection<T> objectsOfType(Class<T> aType) {
        return (Collection<T>) tables.getOrDefault(aType, Collections.emptySet());
    }

    private void persistAddressesOf(Customer anObjectWithAddresses) {
        for (Address anAddress : anObjectWithAddresses.addresses()) persist(anAddress);
    }

    // id

    public int newIdFor(Object anObject) {
        id = id + 1;
        return id;
    }

    // persistance

    public void persist(Object anObject) {
        Set<Object> table;

        delay();
        table = tables.computeIfAbsent(anObject.getClass(), aClass -> new HashSet<>());

        defineIdOf(anObject);
        table.add(anObject);

        if (anObject instanceof Customer) persistAddressesOf((Customer) anObject);
    }

    // selecting

    public <T> Collection<T> select(Predicate<T> aCondition, Class<T> aType) {
        delay();
        Collection<T> selected = new HashSet<>();
        for (T anObject : objectsOfType(aType)) {
            if (aCondition.test(anObject)) selected.add(anObject);
        }
        return selected;
    }

    public <T> Collection<T> selectAllOfType(Class<T> aType) {
        delay();
        return new HashSet<>(objectsOfType(aType));
    }
}
