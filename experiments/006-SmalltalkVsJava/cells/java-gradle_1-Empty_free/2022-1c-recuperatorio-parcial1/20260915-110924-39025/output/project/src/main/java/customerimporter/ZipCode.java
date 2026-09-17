package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode {

    private record ZipCodeCreator(Predicate<String> appliesTo, Function<String, ZipCode> create) {}

    private static final List<ZipCodeCreator> creators = List.of(
        new ZipCodeCreator(OldZipCode::appliesTo, OldZipCode::new),
        new ZipCodeCreator(NewZipCode::appliesTo, NewZipCode::new));

    private final String code;

    // instance creation

    public static ZipCode from(String aZipCode) {
        ZipCode newZipCode = creatorFor(aZipCode).apply(aZipCode);
        newZipCode.assertIsValid();
        return newZipCode;
    }

    // error messages

    // The tests expect this message for a zip code that is neither old nor new, so it is kept as it was
    public static String invalidZipCodeTypeErrorDescription() {
        return "Invalid identification type";
    }

    // instance creation - private

    private static Function<String, ZipCode> creatorFor(String aZipCode) {
        return creators.stream()
            .filter(aCreator -> aCreator.appliesTo().test(aZipCode))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidZipCodeTypeErrorDescription()))
            .create();
    }

    // initialization

    protected ZipCode(String aCode) {
        code = aCode;
    }

    // zip code

    public String code() {
        return code;
    }

    public abstract Object value();

    // type

    public boolean isOld() {
        return false;
    }

    public boolean isNew() {
        return false;
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation

    protected abstract void assertIsValid();

    protected abstract String invalidZipCodeErrorDescription();

    protected void assertThat(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(invalidZipCodeErrorDescription());
    }
}
