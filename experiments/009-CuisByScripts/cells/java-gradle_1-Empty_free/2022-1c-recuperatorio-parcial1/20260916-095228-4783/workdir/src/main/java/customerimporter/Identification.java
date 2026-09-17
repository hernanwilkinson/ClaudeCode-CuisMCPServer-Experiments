package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public abstract class Identification {

    private static final List<Subtype<Identification>> SUBTYPES = List.of(
        new Subtype<>(DNI::canHandle, DNI::new),
        new Subtype<>(CUIT::canHandle, CUIT::new));

    protected final String number;

    // instance creation

    public static Identification of(String aType, String aNumber) {
        return Subtype.handling(aType, SUBTYPES, invalidIdentificationTypeErrorDescription()).create(aNumber);
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    protected abstract String invalidNumberErrorDescription();

    // initialization

    protected Identification(String aNumber) {
        number = aNumber;
    }

    // accessing

    public String number() {
        return number;
    }

    public abstract String type();

    // testing

    public boolean is(String aType, String aNumber) {
        return type().equals(aType) && number.equals(aNumber);
    }

    public abstract boolean isCUIT();

    public abstract boolean isDNI();

    // numbers

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation - private

    protected void assertValid(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(invalidNumberErrorDescription());
    }
}
