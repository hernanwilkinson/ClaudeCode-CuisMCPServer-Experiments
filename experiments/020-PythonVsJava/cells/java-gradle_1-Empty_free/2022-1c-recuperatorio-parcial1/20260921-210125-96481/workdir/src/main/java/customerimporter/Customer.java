package customerimporter;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

public class Customer {

    private int id;
    private final String firstName;
    private final String lastName;
    private final Identification identification;
    private final List<Address> addresses;

    // instance creation

    public static Customer named(String aFirstName, String aLastName, Identification anIdentification) {
        return new Customer(aFirstName, aLastName, anIdentification);
    }

    // initialization

    private Customer(String aFirstName, String aLastName, Identification anIdentification) {
        firstName = aFirstName;
        lastName = aLastName;
        identification = anIdentification;
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

    public String lastName() {
        return lastName;
    }

    // identification

    public Object cuitNumberIfNone(Supplier<Object> aNoneClosure) {
        return identification.cuitNumberIfNone(aNoneClosure);
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

    public boolean isIdentifiedAs(String anIdentificationType, String anIdentificationNumber) {
        return identification.isOfType(anIdentificationType) && identification.hasNumber(anIdentificationNumber);
    }

    public String identificationNumber() {
        return identification.number();
    }

    public String identificationType() {
        return identification.type();
    }
}
