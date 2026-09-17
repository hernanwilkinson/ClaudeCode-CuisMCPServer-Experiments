package customerimporter;

import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode extends ValidatedValue {

    private static final Map<Predicate<Character>, Function<String, ZipCode>> KINDS = Map.of(
        Character::isDigit, OldZipCode::new,
        Character::isLetter, NewZipCode::new);

    // instance creation

    public static ZipCode of(String aZipCode) {
        return KINDS.entrySet().stream()
            .filter(aKind -> aKind.getKey().test(aZipCode.charAt(0)))
            .findFirst()
            .map(aKind -> aKind.getValue().apply(aZipCode))
            .orElseThrow(() -> new RuntimeException(invalidZipCodeTypeErrorDescription()));
    }

    // error messages

    public static String invalidZipCodeTypeErrorDescription() {
        // The tests expect this message for an unknown zip code kind
        return "Invalid identification type";
    }

    // accessing

    public abstract Object value();

    // testing

    public abstract boolean isOld();

    public abstract boolean isNew();

    public abstract Object oldValueIfNone(Supplier<Object> aNoneBlock);

    public abstract Object newValueIfNone(Supplier<Object> aNoneBlock);
}
