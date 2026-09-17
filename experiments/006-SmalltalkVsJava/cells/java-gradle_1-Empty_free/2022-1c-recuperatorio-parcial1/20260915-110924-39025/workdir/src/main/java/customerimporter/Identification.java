package customerimporter;

import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class Identification {

    private static final Map<String, Function<String, Identification>> creatorsByType =
        Map.of(DNI.TYPE, DNI::new,
               CUIT.TYPE, CUIT::new);

    private final String number;

    // instance creation

    public static Identification forTypeAndNumber(String anIdentificationType, String anIdentificationNumber) {
        Identification newIdentification = creatorForType(anIdentificationType).apply(anIdentificationNumber);
        newIdentification.assertIsValid();
        return newIdentification;
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    // instance creation - private

    private static Function<String, Identification> creatorForType(String anIdentificationType) {
        return Optional.ofNullable(creatorsByType.get(anIdentificationType))
            .orElseThrow(() -> new RuntimeException(invalidIdentificationTypeErrorDescription()));
    }

    // initialization

    protected Identification(String aNumber) {
        number = aNumber;
    }

    // identification

    public abstract String type();

    public String number() {
        return number;
    }

    public boolean is(String anIdentificationType, String anIdentificationNumber) {
        return type().equals(anIdentificationType) && number().equals(anIdentificationNumber);
    }

    // type

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

    protected abstract void assertIsValid();

    protected abstract String invalidNumberErrorDescription();

    protected void assertThat(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(invalidNumberErrorDescription());
    }
}
