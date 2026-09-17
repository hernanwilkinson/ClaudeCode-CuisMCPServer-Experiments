package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public abstract class ZipCode {

    private static final List<Subtype<ZipCode>> SUBTYPES = List.of(
        new Subtype<>(OldZipCode::canHandle, OldZipCode::new),
        new Subtype<>(NewZipCode::canHandle, NewZipCode::new));

    // instance creation

    public static ZipCode of(String aZipCode) {
        return Subtype.handling(aZipCode, SUBTYPES, invalidZipCodeTypeErrorDescription()).create(aZipCode);
    }

    // error messages

    public static String invalidZipCodeTypeErrorDescription() {
        // the tests expect this message for an unknown zip code type
        return Identification.invalidIdentificationTypeErrorDescription();
    }

    protected abstract String invalidZipCodeErrorDescription();

    // accessing

    public abstract Object value();

    // testing

    public abstract boolean isNew();

    public abstract boolean isOld();

    // values

    public Object newValueIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object oldValueIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation - private

    protected void assertValid(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(invalidZipCodeErrorDescription());
    }
}
