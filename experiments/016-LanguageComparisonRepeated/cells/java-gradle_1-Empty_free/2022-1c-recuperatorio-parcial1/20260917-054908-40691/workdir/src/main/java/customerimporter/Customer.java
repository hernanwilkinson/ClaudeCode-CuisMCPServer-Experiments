package customerimporter;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

public class Customer {

    private int id;
    private String firstName;
    private String lastName;
    private Identification identification;
    private List<Address> addresses;

    // initialization

    public Customer() {
        super();
        addresses = new ArrayList<>();
    }

    // addresses

    public void addAddress(Address anAddress) {
        addresses.add(anAddress);
    }

    public Address addressAt(String aStreetName, Supplier<Address> aNoneBlock) {
        for (Address address : addresses) {
            if (address.isAt(aStreetName)) return address;
        }
        return aNoneBlock.get();
    }

    public List<Address> addresses() {
        return addresses;
    }

    public boolean isAddressesEmpty() {
        return addresses.isEmpty();
    }

    // name

    public String firstName() {
        return firstName;
    }

    public void firstName(String aName) {
        firstName = aName;
    }

    public String lastName() {
        return lastName;
    }

    public void lastName(String aLastName) {
        lastName = aLastName;
    }

    // identification

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return identification.cuitNumberIfNone(aNoneBlock);
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return identification.dniNumberIfNone(aNoneBlock);
    }

    public boolean hasCUITAsIdentification() {
        return identification.isCUIT();
    }

    public boolean hasDNIAsIdentification() {
        return identification.isDNI();
    }

    public boolean isIdentifiedAs(String anIdType, String anIdNumber) {
        return identification.matches(anIdType, anIdNumber);
    }

    public String identificationNumber() {
        return identification.number();
    }

    public String identificationType() {
        return identification.type();
    }

    public void identification(Identification anIdentification) {
        identification = anIdentification;
    }
}
