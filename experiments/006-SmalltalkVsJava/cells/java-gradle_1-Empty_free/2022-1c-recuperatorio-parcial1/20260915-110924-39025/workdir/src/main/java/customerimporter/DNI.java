package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String TYPE = "D";

    // error messages

    public static String invalidDNINumberErrorDescription() {
        return "Invalid DNI number";
    }

    // initialization

    DNI(String aNumber) {
        super(aNumber);
    }

    // identification

    public String type() {
        return TYPE;
    }

    // type

    public boolean isDNI() {
        return true;
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return dniNumber();
    }

    public int dniNumber() {
        return Integer.parseInt(number());
    }

    // validation

    protected void assertIsValid() {
        assertThat(Characters.areAllDigits(number()));
        assertThat(dniNumber() >= 1 && dniNumber() <= 99999999);
    }

    protected String invalidNumberErrorDescription() {
        return invalidDNINumberErrorDescription();
    }
}
