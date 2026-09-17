package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class ZipCode {

    private record Kind(Predicate<Character> firstCharacterCondition, Function<String, ZipCode> creator) {
        boolean canHandle(String aZipCode) {
            return firstCharacterCondition.test(aZipCode.charAt(0));
        }
    }

    private static final List<Kind> KINDS = List.of(
        new Kind(Character::isDigit, OldZipCode::new),
        new Kind(Character::isLetter, NewZipCode::new));

    // instance creation

    public static ZipCode from(String aZipCode) {
        return KINDS.stream()
            .filter(aKind -> aKind.canHandle(aZipCode))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(invalidZipCodeTypeErrorDescription()))
            .creator().apply(aZipCode);
    }

    // error messages

    public static String invalidZipCodeTypeErrorDescription() {
        return "Invalid identification type";
    }

    // validation

    protected void assertValid(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(invalidZipCodeErrorDescription());
    }

    protected abstract String invalidZipCodeErrorDescription();

    // accessing

    public abstract Object value();

    // kind

    public abstract boolean isOld();

    public abstract boolean isNew();

    public abstract Object oldZipCodeIfNone(Supplier<Object> aNoneBlock);

    public abstract Object newZipCodeIfNone(Supplier<Object> aNoneBlock);
}
