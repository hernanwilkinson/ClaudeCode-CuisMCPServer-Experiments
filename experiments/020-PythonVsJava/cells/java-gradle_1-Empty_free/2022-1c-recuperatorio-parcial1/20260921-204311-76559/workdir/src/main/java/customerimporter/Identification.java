package customerimporter;

import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class Identification {

    // Each identification type is created by its own class, looked up by the type read from the record,
    // so adding a new type does not change this class more than this map.
    private static final Map<String, Function<String, Identification>> creatorPerType = Map.of(
        DNI.TYPE, DNI::new,
        CUIT.TYPE, CUIT::new);

    private final String number;

    // instance creation

    public static Identification ofType(String anIdentificationType, String anIdentificationNumber) {
        return Optional.ofNullable(creatorPerType.get(anIdentificationType))
            .orElseThrow(() -> new RuntimeException(invalidIdentificationTypeErrorDescription()))
            .apply(anIdentificationNumber);
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected Identification(String anIdentificationNumber) {
        number = anIdentificationNumber;
    }

    // identification

    public boolean isOfTypeAndNumber(String anIdentificationType, String anIdentificationNumber) {
        return type().equals(anIdentificationType) && number.equals(anIdentificationNumber);
    }

    public String number() {
        return number;
    }

    public abstract String type();

    // testing

    public abstract boolean isCUIT();

    public abstract boolean isDNI();

    // numbers

    public abstract Object cuitNumberIfNone(Supplier<Object> aNoneBlock);

    public abstract Object dniNumberIfNone(Supplier<Object> aNoneBlock);
}
