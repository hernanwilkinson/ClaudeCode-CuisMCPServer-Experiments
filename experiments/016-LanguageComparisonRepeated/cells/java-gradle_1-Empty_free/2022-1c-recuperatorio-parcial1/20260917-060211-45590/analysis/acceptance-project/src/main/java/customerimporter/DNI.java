package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    private static final String TYPE = "D";

    // instance creation

    public static boolean canHandle(String aType) {
        return TYPE.equals(aType);
    }

    // error messages

    public static String invalidDNINumberErrorDescription() {
        return "Invalid DNI number";
    }

    // initialization

    public DNI(String aNumber) {
        super(aNumber);
    }

    // accessing

    public String type() {
        return TYPE;
    }

    // testing

    public boolean isDNI() {
        return true;
    }

    public boolean isCUIT() {
        return false;
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return Integer.parseInt(number);
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation

    protected void assertIsValid() {
        assertThat(Characters.areAllDigits(number));
        int dniNumber = Integer.parseInt(number);
        assertThat(dniNumber >= 1 && dniNumber <= 99999999);
    }

    protected String invalidNumberErrorDescription() {
        return invalidDNINumberErrorDescription();
    }
}
