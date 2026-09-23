package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Supplier;

/**
 * The identification of a {@link Customer}: knows its type code, its number and how to answer
 * the questions that only make sense for one kind of identification. Each subclass validates
 * its own numbers, so nobody has to ask which kind of identification it is dealing with.
 */
public abstract class Identification {

    private static final List<Kind> kinds = List.of(
        new Kind(DNI.TYPE_CODE, DNI::with),
        new Kind(CUIT.TYPE_CODE, CUIT::with));

    private final String number;

    // instance creation

    public static Identification of(String aTypeCode, String aNumber) {
        return kinds.stream()
            .filter(aKind -> aKind.handles(aTypeCode))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidTypeErrorDescription()))
            .create(aNumber);
    }

    // error messages

    public static String invalidTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected Identification(String aNumber) {
        number = aNumber;
    }

    // accessing

    public String number() {
        return number;
    }

    public abstract String typeCode();

    // testing

    public boolean isIdentifiedBy(String aTypeCode, String aNumber) {
        return typeCode().equals(aTypeCode) && number.equals(aNumber);
    }

    public abstract boolean isCUIT();

    public abstract boolean isDNI();

    // evaluating

    public abstract Object cuitNumberIfNone(Supplier<Object> aNoneBlock);

    public abstract Object dniNumberIfNone(Supplier<Object> aNoneBlock);

    // kinds - private

    private record Kind(String typeCode, Function<String, Identification> creator) {

        boolean handles(String aTypeCode) {
            return typeCode.equals(aTypeCode);
        }

        Identification create(String aNumber) {
            return creator.apply(aNumber);
        }
    }
}
