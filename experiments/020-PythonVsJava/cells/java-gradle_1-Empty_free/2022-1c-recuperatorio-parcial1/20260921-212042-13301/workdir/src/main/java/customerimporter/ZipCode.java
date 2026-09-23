package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode {

    private final String code;

    // instance creation

    private record ZipCodeCreator(Predicate<String> recognizesCode, Function<String, ZipCode> withCode) {}

    private static final List<ZipCodeCreator> zipCodeCreators = List.of(
        new ZipCodeCreator(OldZipCode::recognizes, OldZipCode::new),
        new ZipCodeCreator(NewZipCode::recognizes, NewZipCode::new));

    public static ZipCode with(String aCode) {
        for (ZipCodeCreator aZipCodeCreator : zipCodeCreators) {
            if (aZipCodeCreator.recognizesCode().test(aCode)) return aZipCodeCreator.withCode().apply(aCode);
        }
        throw new RuntimeException(invalidZipCodeTypeErrorDescription());
    }

    // error messages

    // the message talks about the identification type because that is what the tests expect
    public static String invalidZipCodeTypeErrorDescription() {
        return "Invalid identification type";
    }

    // initialization

    protected ZipCode(String aCode) {
        assertIsValidCode(aCode);
        code = aCode;
    }

    // zip code

    public abstract Object value();

    public abstract boolean isOld();

    public abstract boolean isNew();

    public abstract Object oldZipCodeIfNone(Supplier<Object> aNoneBlock);

    public abstract Object newZipCodeIfNone(Supplier<Object> aNoneBlock);

    // zip code - protected

    protected String code() {
        return code;
    }

    // validation

    protected abstract boolean isValidCode(String aCode);

    protected abstract String invalidCodeErrorDescription();

    // validation - private

    private void assertIsValidCode(String aCode) {
        if (!isValidCode(aCode)) throw new RuntimeException(invalidCodeErrorDescription());
    }
}
