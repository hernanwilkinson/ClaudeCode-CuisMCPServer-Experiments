package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String TYPE = "D";

    private static final int MINIMUM_NUMBER = 1;
    private static final int MAXIMUM_NUMBER = 99999999;

    private final int dniNumber;

    // error messages

    public static String invalidNumberErrorDescription() {
        return "Invalid DNI number";
    }

    // initialization

    DNI(String anIdentificationNumber) {
        super(anIdentificationNumber);
        dniNumber = Validation.assertIsNumberBetween(
            anIdentificationNumber, MINIMUM_NUMBER, MAXIMUM_NUMBER, invalidNumberErrorDescription());
    }

    // identification

    public String type() {
        return TYPE;
    }

    // testing

    public boolean isCUIT() {
        return false;
    }

    public boolean isDNI() {
        return true;
    }

    // numbers

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return dniNumber;
    }
}
