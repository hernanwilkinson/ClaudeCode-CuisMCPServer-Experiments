package app;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

class GreeterTest {
    @Test
    void greetsByName() {
        assertEquals("Hello, Ada", new Greeter().greet("Ada"));
    }

    @Test
    void greetsFormallyByName() {
        assertEquals("Good day, Ada.", new Greeter().greetFormally("Ada"));
    }
}
