package customerimporter;

import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode {

    private static final List<ZipCodeKind> KINDS = Arrays.asList(
        new ZipCodeKind(OldZipCode::canBeCreatedFrom, OldZipCode::new),
        new ZipCodeKind(NewZipCode::canBeCreatedFrom, NewZipCode::new));

    private record ZipCodeKind(Predicate<String> canBeCreatedFrom, Function<String, ZipCode> creator) {}

    // instance creation

    public static ZipCode from(String aZipCode) {
        return KINDS.stream()
            .filter(aKind -> aKind.canBeCreatedFrom().test(aZipCode))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidZipCodeTypeErrorDescription()))
            .creator().apply(aZipCode);
    }

    // error messages

    public static String invalidZipCodeTypeErrorDescription() {
        return "Invalid identification type";
    }

    // accessing

    public abstract Object value();

    // testing

    public boolean isOld() {
        return false;
    }

    public boolean isNew() {
        return false;
    }

    public Object oldValueIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object newValueIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation - private

    protected abstract String invalidZipCodeErrorDescription();

    protected void assertValidZipCode(boolean aCondition) {
        ImportValidations.assertThat(aCondition, invalidZipCodeErrorDescription());
    }
}
