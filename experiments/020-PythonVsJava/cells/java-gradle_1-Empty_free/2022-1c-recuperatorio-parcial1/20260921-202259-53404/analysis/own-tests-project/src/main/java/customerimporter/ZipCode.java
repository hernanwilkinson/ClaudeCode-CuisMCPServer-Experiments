package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/**
 * The zip code of an {@link Address}. Each subclass recognizes the strings it can be created
 * from, validates them and knows its own value, so nobody has to ask which kind of zip code
 * it is dealing with.
 */
public abstract class ZipCode {

    private static final List<Kind> kinds = List.of(
        new Kind(OldZipCode::canBeCreatedFrom, OldZipCode::with),
        new Kind(NewZipCode::canBeCreatedFrom, NewZipCode::with));

    // instance creation

    public static ZipCode of(String aZipCode) {
        return kinds.stream()
            .filter(aKind -> aKind.handles(aZipCode))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidTypeErrorDescription()))
            .create(aZipCode);
    }

    // error messages

    // The tests expect this message for a zip code that is neither old nor new, so it is kept
    // as it was written even though it talks about identifications.
    public static String invalidTypeErrorDescription() {
        return "Invalid identification type";
    }

    // accessing

    public abstract Object value();

    // testing

    public abstract boolean isNew();

    public abstract boolean isOld();

    // evaluating

    public abstract Object newZipCodeIfNone(Supplier<Object> aNoneBlock);

    public abstract Object oldZipCodeIfNone(Supplier<Object> aNoneBlock);

    // kinds - private

    private record Kind(Predicate<String> condition, Function<String, ZipCode> creator) {

        boolean handles(String aZipCode) {
            return condition.test(aZipCode);
        }

        ZipCode create(String aZipCode) {
            return creator.apply(aZipCode);
        }
    }
}
