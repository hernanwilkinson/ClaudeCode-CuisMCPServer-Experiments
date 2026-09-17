package customerimporter;

import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class Identification {

    private static final Map<String, Function<String, Identification>> TYPES = Map.of(
        DNI.TYPE, DNI::new,
        CUIT.TYPE, CUIT::new);

    protected final String number;

    // instance creation

    public static Identification of(String aType, String aNumber) {
        return TYPES
            .getOrDefault(aType, anInvalidNumber -> { throw new RuntimeException(invalidIdentificationTypeErrorDescription()); })
            .apply(aNumber);
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected Identification(String aNumber) {
        number = aNumber;
        assertIsValid();
    }

    // accessing

    public String number() {
        return number;
    }

    public abstract String type();

    public boolean is(String aType, String aNumber) {
        return type().equals(aType) && number.equals(aNumber);
    }

    // testing

    public boolean isDNI() {
        return false;
    }

    public boolean isCUIT() {
        return false;
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation - private

    protected abstract void assertIsValid();

    protected abstract String invalidNumberErrorDescription();

    protected void assertValidNumber(boolean aCondition) {
        ImportValidations.assertThat(aCondition, invalidNumberErrorDescription());
    }
}
