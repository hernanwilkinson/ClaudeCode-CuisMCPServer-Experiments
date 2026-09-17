package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class Identification {

    private record Kind(Predicate<String> canHandle, Function<String, Identification> creator) {}

    private static final List<Kind> KINDS = List.of(
        new Kind(DNI::canHandle, DNI::new),
        new Kind(CUIT::canHandle, CUIT::new));

    protected final String number;

    // instance creation

    public static Identification of(String aType, String aNumber) {
        return KINDS.stream()
            .filter(aKind -> aKind.canHandle().test(aType))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidIdentificationTypeErrorDescription()))
            .creator().apply(aNumber);
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

    // testing

    public abstract boolean isDNI();

    public abstract boolean isCUIT();

    public abstract Object dniNumberIfNone(Supplier<Object> aNoneBlock);

    public abstract Object cuitNumberIfNone(Supplier<Object> aNoneBlock);

    // validation

    protected abstract void assertIsValid();

    protected abstract String invalidNumberErrorDescription();

    protected void assertThat(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(invalidNumberErrorDescription());
    }
}
