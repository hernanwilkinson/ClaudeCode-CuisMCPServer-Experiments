package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    private static final String TYPE = "C";
    private static final List<String> VALID_HEADERS = List.of("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // instance creation

    public static boolean canHandle(String aType) {
        return TYPE.equals(aType);
    }

    // error messages

    public static String invalidCUITNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // initialization

    public CUIT(String aNumber) {
        super(aNumber);
    }

    // accessing

    public String type() {
        return TYPE;
    }

    // testing

    public boolean isDNI() {
        return false;
    }

    public boolean isCUIT() {
        return true;
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return number;
    }

    // validation

    // "23-25666777-9" size 13
    protected void assertIsValid() {
        int penultimate = number.length() - 2;

        assertThat(number.length() >= 12 && number.length() <= 13);
        assertThat(number.charAt(2) == '-' && number.charAt(penultimate) == '-');
        assertThat(VALID_HEADERS.contains(number.substring(0, 2)));
        assertThat(Character.isDigit(number.charAt(number.length() - 1)));
        assertThat(Characters.areAllDigits(number.substring(3, penultimate)));
    }

    protected String invalidNumberErrorDescription() {
        return invalidCUITNumberErrorDescription();
    }
}
