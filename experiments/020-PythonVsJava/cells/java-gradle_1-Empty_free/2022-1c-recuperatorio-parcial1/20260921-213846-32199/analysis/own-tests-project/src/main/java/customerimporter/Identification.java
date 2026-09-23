package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class Identification {

    private static final List<IdentificationType> types = List.of(
        new IdentificationType(DNI.TYPE, DNI::from),
        new IdentificationType(CUIT.TYPE, CUIT::from));

    // instance creation

    public static Identification forTypeAndNumber(String aType, String aNumber) {
        return types.stream()
            .filter(anIdentificationType -> anIdentificationType.handles(aType))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidIdentificationTypeErrorDescription()))
            .createFrom(aNumber);
    }

    // error messages

    public static String invalidIdentificationTypeErrorDescription() {
        return "Invalid identification type";
    }

    // identification

    public abstract String number();

    public abstract String type();

    public boolean isFor(String aType, String aNumber) {
        return type().equals(aType) && number().equals(aNumber);
    }

    // testing

    public abstract boolean isCUIT();

    public abstract boolean isDNI();

    // numbers

    public abstract Object cuitNumberIfNone(Supplier<Object> aNoneBlock);

    public abstract Object dniNumberIfNone(Supplier<Object> aNoneBlock);

    // types

    private record IdentificationType(String type, Function<String, Identification> creator) {

        public boolean handles(String aType) {
            return type.equals(aType);
        }

        public Identification createFrom(String aNumber) {
            return creator.apply(aNumber);
        }
    }
}
