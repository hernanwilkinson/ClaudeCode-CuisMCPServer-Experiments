package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String TYPE = "D";

    // subtype selection

    public static boolean canHandle(String aType) {
        return aType.equals(TYPE);
    }

    // initialization

    public DNI(String aNumber) {
        super(aNumber);
        assertValid(Characters.areAllDigits(aNumber));
        int dniNumber = Integer.parseInt(aNumber);
        assertValid(dniNumber >= 1 && dniNumber <= 99999999);
    }

    // error messages

    protected String invalidNumberErrorDescription() {
        return "Invalid DNI number";
    }

    // accessing

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

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return Integer.parseInt(number);
    }
}
