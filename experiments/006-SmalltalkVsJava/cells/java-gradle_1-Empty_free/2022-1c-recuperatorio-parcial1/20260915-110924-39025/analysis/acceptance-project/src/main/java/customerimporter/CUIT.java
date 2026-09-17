package customerimporter;

import java.util.Arrays;
import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String TYPE = "C";

    private static final List<String> validHeaders = Arrays.asList("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // error messages

    public static String invalidCUITNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // initialization

    CUIT(String aNumber) {
        super(aNumber);
    }

    // identification

    public String type() {
        return TYPE;
    }

    // type

    public boolean isCUIT() {
        return true;
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return cuitNumber();
    }

    public String cuitNumber() {
        return number();
    }

    // validation

    protected void assertIsValid() {
        String cuitNumber = number();

        // "23-25666777-9" size 13
        assertThat(cuitNumber.length() >= 12 && cuitNumber.length() <= 13);
        assertThat(cuitNumber.charAt(2) == '-' && cuitNumber.charAt(cuitNumber.length() - 2) == '-');
        assertThat(validHeaders.contains(cuitNumber.substring(0, 2)));
        assertThat(Character.isDigit(cuitNumber.charAt(cuitNumber.length() - 1)));
        assertThat(Characters.areAllDigits(cuitNumber.substring(3, cuitNumber.length() - 2)));
    }

    protected String invalidNumberErrorDescription() {
        return invalidCUITNumberErrorDescription();
    }
}
