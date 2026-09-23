package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode {

    // Each zip code type knows whether it is the one written in the record, so adding a new type
    // does not change this class more than this list.
    private static final List<ZipCodeCreator> creators = List.of(
        new ZipCodeCreator(OldZipCode::canBeCreatedFrom, OldZipCode::new),
        new ZipCodeCreator(NewZipCode::canBeCreatedFrom, NewZipCode::new));

    // instance creation

    public static ZipCode from(String aZipCode) {
        return creators.stream()
            .filter(aCreator -> aCreator.canCreateFrom(aZipCode))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidZipCodeTypeErrorDescription()))
            .from(aZipCode);
    }

    // error messages

    public static String invalidZipCodeTypeErrorDescription() {
        // Same message as the original code - and as the one the tests expect - even though
        // it talks about an identification type
        return "Invalid identification type";
    }

    // zip code

    public abstract Object value();

    // testing

    public abstract boolean isNew();

    public abstract boolean isOld();

    // values

    public abstract Object newZipCodeIfNone(Supplier<Object> aNoneBlock);

    public abstract Object oldZipCodeIfNone(Supplier<Object> aNoneBlock);

    // instance creation - private

    private record ZipCodeCreator(Predicate<String> condition, Function<String, ZipCode> creation) {

        boolean canCreateFrom(String aZipCode) {
            return condition.test(aZipCode);
        }

        ZipCode from(String aZipCode) {
            return creation.apply(aZipCode);
        }
    }
}
