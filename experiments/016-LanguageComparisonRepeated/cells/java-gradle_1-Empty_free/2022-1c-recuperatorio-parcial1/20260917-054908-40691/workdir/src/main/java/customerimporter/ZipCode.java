package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode {

    private record Kind(Predicate<String> handlesZipCode, Function<String, ZipCode> creator) {}

    private static final List<Kind> KINDS = List.of(
        new Kind(OldZipCode::canHandle, OldZipCode::new),
        new Kind(NewZipCode::canHandle, NewZipCode::new));

    // instance creation

    public static ZipCode from(String aZipCode) {
        return KINDS.stream()
            .filter(aKind -> aKind.handlesZipCode().test(aZipCode))
            .findFirst()
            .map(aKind -> aKind.creator().apply(aZipCode))
            .orElseThrow(() -> new RuntimeException(invalidZipCodeTypeErrorDescription()));
    }

    // error messages

    public static String invalidZipCodeTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected ZipCode(String aZipCode) {
        if (!isValid(aZipCode)) throw new RuntimeException(invalidZipCodeErrorDescription());
    }

    // accessing

    public abstract Object value();

    // testing

    public abstract boolean isOld();

    public abstract boolean isNew();

    public abstract Object oldZipCodeIfNone(Supplier<Object> aNoneBlock);

    public abstract Object newZipCodeIfNone(Supplier<Object> aNoneBlock);

    // validation

    protected abstract boolean isValid(String aZipCode);

    protected abstract String invalidZipCodeErrorDescription();
}
