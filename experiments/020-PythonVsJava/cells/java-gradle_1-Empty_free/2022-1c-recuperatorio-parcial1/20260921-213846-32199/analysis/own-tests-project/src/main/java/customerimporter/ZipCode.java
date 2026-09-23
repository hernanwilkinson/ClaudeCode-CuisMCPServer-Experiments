package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode {

    protected static final int MINIMUM_POSTAL_NUMBER = 1000;
    protected static final int MAXIMUM_POSTAL_NUMBER = 9999;

    private static final List<ZipCodeType> types = List.of(
        new ZipCodeType(OldZipCode::canCreateFrom, OldZipCode::from),
        new ZipCodeType(NewZipCode::canCreateFrom, NewZipCode::from));

    // instance creation

    public static ZipCode from(String aZipCode) {
        return types.stream()
            .filter(aZipCodeType -> aZipCodeType.canCreateFrom(aZipCode))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidZipCodeTypeErrorDescription()))
            .createFrom(aZipCode);
    }

    // error messages

    // The tests expect this wording for a zip code that is neither old nor new
    public static String invalidZipCodeTypeErrorDescription() {
        return "Invalid identification type";
    }

    // asserting - private

    protected static int assertIsValidPostalNumber(String aPostalNumber, CodeValidator aValidator) {
        return aValidator.assertNumberBetween(aPostalNumber, MINIMUM_POSTAL_NUMBER, MAXIMUM_POSTAL_NUMBER);
    }

    // zip code

    public abstract Object value();

    // testing

    public abstract boolean isNew();

    public abstract boolean isOld();

    // values

    public abstract Object newZipCodeIfNone(Supplier<Object> aNoneBlock);

    public abstract Object oldZipCodeIfNone(Supplier<Object> aNoneBlock);

    // types

    private record ZipCodeType(Predicate<String> condition, Function<String, ZipCode> creator) {

        public boolean canCreateFrom(String aZipCode) {
            return condition.test(aZipCode);
        }

        public ZipCode createFrom(String aZipCode) {
            return creator.apply(aZipCode);
        }
    }
}
