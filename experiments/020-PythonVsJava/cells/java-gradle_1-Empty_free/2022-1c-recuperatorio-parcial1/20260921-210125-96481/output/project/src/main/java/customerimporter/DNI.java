package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String type = "D";

    private static final int minimumNumber = 1;
    private static final int maximumNumber = 99999999;

    // instance creation

    public static DNI withNumber(String aNumber) {
        return new DNI(aNumber);
    }

    // error messages

    public String invalidNumberErrorDescription() {
        return "Invalid DNI number";
    }

    // initialization

    private DNI(String aNumber) {
        super(aNumber);
    }

    // identification

    public String type() {
        return type;
    }

    // dni - cuit

    public boolean isDNI() {
        return true;
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return Integer.parseInt(number());
    }

    // validation

    protected boolean isValidNumber(String aNumber) {
        return Strings.hasOnlyDigits(aNumber) && isInValidRange(Integer.parseInt(aNumber));
    }

    private boolean isInValidRange(int aNumber) {
        return aNumber >= minimumNumber && aNumber <= maximumNumber;
    }
}
