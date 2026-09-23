package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class Identification {

    private final String number;

    // instance creation

    private record IdentificationCreator(Predicate<String> recognizesTypeCode, Function<String, Identification> withNumber) {}

    private static final List<IdentificationCreator> identificationCreators = List.of(
        new IdentificationCreator(DNI::recognizes, DNI::new),
        new IdentificationCreator(CUIT::recognizes, CUIT::new));

    public static Identification with(String aTypeCode, String aNumber) {
        for (IdentificationCreator anIdentificationCreator : identificationCreators) {
            if (anIdentificationCreator.recognizesTypeCode().test(aTypeCode))
                return anIdentificationCreator.withNumber().apply(aNumber);
        }
        throw new RuntimeException(invalidIdentificationTypeErrorDescription());
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected Identification(String aNumber) {
        assertIsValidNumber(aNumber);
        number = aNumber;
    }

    // identification

    public String number() {
        return number;
    }

    public abstract String typeCode();

    public abstract boolean isDNI();

    public abstract boolean isCUIT();

    public abstract Object dniNumberIfNone(Supplier<Object> aNoneBlock);

    public abstract Object cuitNumberIfNone(Supplier<Object> aNoneBlock);

    // validation

    protected abstract boolean isValidNumber(String aNumber);

    protected abstract String invalidNumberErrorDescription();

    // validation - private

    private void assertIsValidNumber(String aNumber) {
        if (!isValidNumber(aNumber)) throw new RuntimeException(invalidNumberErrorDescription());
    }
}
