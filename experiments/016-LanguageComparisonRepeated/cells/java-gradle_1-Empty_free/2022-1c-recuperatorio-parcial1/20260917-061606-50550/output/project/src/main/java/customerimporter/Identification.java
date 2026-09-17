package customerimporter;

import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class Identification {

    private static final Map<String, Function<String, Identification>> TYPES = Map.of(
        DNI.TYPE, DNI::new,
        CUIT.TYPE, CUIT::new);

    protected final String number;

    // instance creation

    public static Identification of(String aType, String aNumber) {
        return Optional.ofNullable(TYPES.get(aType))
            .orElseThrow(() -> new RuntimeException(invalidIdentificationTypeErrorDescription()))
            .apply(aNumber);
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected Identification(String aNumber) {
        number = aNumber;
    }

    // validation

    protected void assertValidNumber(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(invalidNumberErrorDescription());
    }

    protected abstract String invalidNumberErrorDescription();

    // accessing

    public abstract String type();

    public String number() {
        return number;
    }

    public boolean is(String aType, String aNumber) {
        return type().equals(aType) && number.equals(aNumber);
    }

    // kind

    public abstract boolean isDNI();

    public abstract boolean isCUIT();

    public abstract Object dniNumberIfNone(Supplier<Object> aNoneBlock);

    public abstract Object cuitNumberIfNone(Supplier<Object> aNoneBlock);
}
