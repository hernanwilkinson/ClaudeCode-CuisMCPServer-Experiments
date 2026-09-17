package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String TYPE = "D";

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

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return Integer.parseInt(number);
    }

    // validation - private

    protected void assertIsValid() {
        assertValidNumber(ImportValidations.isAllDigits(number));
        assertValidNumber(ImportValidations.isBetween(Integer.parseInt(number), 1, 99999999));
    }

    protected String invalidNumberErrorDescription() {
        return "Invalid DNI number";
    }
}
