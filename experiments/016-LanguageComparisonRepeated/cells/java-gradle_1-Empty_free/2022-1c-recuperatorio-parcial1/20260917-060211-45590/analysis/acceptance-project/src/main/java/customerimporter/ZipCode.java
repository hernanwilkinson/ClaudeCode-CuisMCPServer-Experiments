package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode {

    private record Kind(Predicate<String> canHandle, Function<String, ZipCode> creator) {}

    private static final List<Kind> KINDS = List.of(
        new Kind(OldZipCode::canHandle, OldZipCode::new),
        new Kind(NewZipCode::canHandle, NewZipCode::new));

    protected final String code;

    // instance creation

    public static ZipCode from(String aZipCode) {
        return KINDS.stream()
            .filter(aKind -> aKind.canHandle().test(aZipCode))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidZipCodeTypeErrorDescription()))
            .creator().apply(aZipCode);
    }

    // error messages

    // the tests expect this (misleading) text for an unknown zip code format
    public static String invalidZipCodeTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected ZipCode(String aZipCode) {
        code = aZipCode;
        assertIsValid();
    }

    // accessing

    public abstract Object value();

    // testing

    public abstract boolean isOld();

    public abstract boolean isNew();

    public abstract Object oldZipCodeIfNone(Supplier<Object> aNoneBlock);

    public abstract Object newZipCodeIfNone(Supplier<Object> aNoneBlock);

    // validation

    protected abstract void assertIsValid();

    protected abstract String invalidZipCodeErrorDescription();

    protected void assertThat(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(invalidZipCodeErrorDescription());
    }
}
