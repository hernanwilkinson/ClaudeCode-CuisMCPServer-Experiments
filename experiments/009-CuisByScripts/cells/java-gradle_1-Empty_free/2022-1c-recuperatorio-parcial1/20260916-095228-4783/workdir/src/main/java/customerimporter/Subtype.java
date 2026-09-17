package customerimporter;

import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;

public record Subtype<T>(Predicate<String> canHandle, Function<String, T> creator) {

    // selecting

    public static <T> Subtype<T> handling(String aKey, List<Subtype<T>> subtypes, String aNoneErrorDescription) {
        return subtypes.stream()
            .filter(aSubtype -> aSubtype.canHandle().test(aKey))
            .findFirst()
            .orElseThrow(() -> new RuntimeException(aNoneErrorDescription));
    }

    // instance creation

    public T create(String aValue) {
        return creator.apply(aValue);
    }
}
