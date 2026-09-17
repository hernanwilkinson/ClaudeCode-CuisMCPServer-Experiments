package customerimporter;

import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class Identification extends ValidatedValue {

    private static final Map<String, Function<String, Identification>> TYPES = Map.of(
        DNI.TYPE, DNI::new,
        CUIT.TYPE, CUIT::new);

    private final String number;

    // instance creation

    public static Identification of(String aType, String aNumber) {
        return Optional.ofNullable(TYPES.get(aType))
            .map(aCreator -> aCreator.apply(aNumber))
            .orElseThrow(() -> new RuntimeException(invalidIdentificationTypeErrorDescription()));
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected Identification(String aNumber) {
        number = aNumber;
        assertValidNumber(aNumber);
    }

    protected abstract void assertValidNumber(String aNumber);

    // accessing

    public String number() {
        return number;
    }

    public abstract String type();

    public boolean is(String aType, String aNumber) {
        return type().equals(aType) && number.equals(aNumber);
    }

    // testing

    public abstract boolean isDNI();

    public abstract boolean isCUIT();

    public abstract Object dniNumberIfNone(Supplier<Object> aNoneBlock);

    public abstract Object cuitNumberIfNone(Supplier<Object> aNoneBlock);
}
