package customerimporter;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

public class Customer {

    private int id;
    private String firstName;
    private String lastName;
    private String identificationType;
    private String identificationNumber;
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

    public Object cuitNumberIfNone(Supplier<Object> aNoneClosure) {
        if (hasCUITAsIdentification())
            return identificationNumber;
        else
            return aNoneClosure.get();
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        if (hasDNIAsIdentification())
            return Integer.parseInt(identificationNumber);
        else
            return aNoneBlock.get();
    }

    public boolean hasCUITAsIdentification() {
        return identificationType.equals("C");
    }

    public boolean hasDNIAsIdentification() {
        return identificationType.equals("D");
    }

    public String identificationNumber() {
        return identificationNumber;
    }

    public void identificationNumber(String anIdentificationNumber) {
        identificationNumber = anIdentificationNumber;
    }

    public String identificationType() {
        return identificationType;
    }

    public void identificationType(String anIdentificationType) {
        identificationType = anIdentificationType;
    }
}
