package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class Identification {

    private record Kind(Predicate<String> handlesType, Function<String, Identification> creator) {}

    private static final List<Kind> KINDS = List.of(
        new Kind(DNI::canHandle, DNI::new),
        new Kind(CUIT::canHandle, CUIT::new));

    private final String number;

    // instance creation

    public static Identification of(String aType, String aNumber) {
        return KINDS.stream()
            .filter(aKind -> aKind.handlesType().test(aType))
            .findFirst()
            .map(aKind -> aKind.creator().apply(aNumber))
            .orElseThrow(() -> new RuntimeException(invalidIdentificationTypeErrorDescription()));
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected Identification(String aNumber) {
        if (!isValidNumber(aNumber)) throw new RuntimeException(invalidNumberErrorDescription());
        number = aNumber;
    }

    // accessing

    public String number() {
        return number;
    }

    public abstract String type();

    public boolean matches(String aType, String aNumber) {
        return type().equals(aType) && number.equals(aNumber);
    }

    // testing

    public abstract boolean isDNI();

    public abstract boolean isCUIT();

    public abstract Object dniNumberIfNone(Supplier<Object> aNoneBlock);

    public abstract Object cuitNumberIfNone(Supplier<Object> aNoneBlock);

    // validation

    protected abstract boolean isValidNumber(String aNumber);

    protected abstract String invalidNumberErrorDescription();
}
