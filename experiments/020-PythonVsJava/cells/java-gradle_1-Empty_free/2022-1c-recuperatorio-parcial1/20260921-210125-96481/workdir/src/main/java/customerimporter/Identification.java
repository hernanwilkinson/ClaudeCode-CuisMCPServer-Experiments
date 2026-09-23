package customerimporter;

import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class Identification {

    private static final Map<String, Function<String, Identification>> creationsByType = Map.of(
        DNI.type, DNI::withNumber,
        CUIT.type, CUIT::withNumber);

    private final String number;

    // instance creation

    public static Identification ofType(String aType, String aNumber) {
        return Optional.ofNullable(creationsByType.get(aType))
            .orElseThrow(() -> new RuntimeException(invalidIdentificationTypeErrorDescription()))
            .apply(aNumber);
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    public abstract String invalidNumberErrorDescription();

    // initialization

    protected Identification(String aNumber) {
        assertIsValidNumber(aNumber);
        number = aNumber;
    }

    // identification

    public abstract String type();

    public String number() {
        return number;
    }

    public boolean isOfType(String aType) {
        return type().equals(aType);
    }

    public boolean hasNumber(String aNumber) {
        return number.equals(aNumber);
    }

    // dni - cuit

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

    // validation

    protected abstract boolean isValidNumber(String aNumber);

    private void assertIsValidNumber(String aNumber) {
        if (!isValidNumber(aNumber)) throw new RuntimeException(invalidNumberErrorDescription());
    }
}
