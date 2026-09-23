package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode {

    private static final List<ZipCodeCreation> creations = List.of(
        new ZipCodeCreation(OldZipCode::canRepresent, OldZipCode::from),
        new ZipCodeCreation(NewZipCode::canRepresent, NewZipCode::from));

    private final String code;

    // instance creation

    public static ZipCode from(String aCode) {
        return creations.stream()
            .filter(aCreation -> aCreation.canRepresent(aCode))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidZipCodeTypeErrorDescription()))
            .from(aCode);
    }

    // error messages

    // The text is the one the tests expect, copied from the identification type error
    public static String invalidZipCodeTypeErrorDescription() {
        return "Invalid identification type";
    }

    public abstract String invalidZipCodeErrorDescription();

    // initialization

    protected ZipCode(String aCode) {
        assertIsValid(aCode);
        code = aCode;
    }

    // zip code

    public abstract Object value();

    protected String code() {
        return code;
    }

    // old - new

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

    // validation

    protected abstract boolean isValid(String aCode);

    private void assertIsValid(String aCode) {
        if (!isValid(aCode)) throw new RuntimeException(invalidZipCodeErrorDescription());
    }

    // creation - private

    private record ZipCodeCreation(Predicate<String> condition, Function<String, ZipCode> creation) {

        boolean canRepresent(String aCode) {
            return condition.test(aCode);
        }

        ZipCode from(String aCode) {
            return creation.apply(aCode);
        }
    }
}
