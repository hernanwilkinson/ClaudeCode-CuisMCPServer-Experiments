package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

/**
 * The state of a Room: it can be available, reserved or occupied.
 * Each state knows how to answer the state the room reaches after
 * receiving a guest, receiving a guest with reservation or being reserved.
 */
public abstract class RoomState {

    // guests

    public abstract RoomState receive(String aGuestType);

    public abstract RoomState receiveWithReservation(String aGuestType);

    public abstract RoomState reserve();

    // testing

    public abstract boolean isAvailable();

    public abstract boolean isOccupied();

    public abstract boolean isReserved();

    // accounting

    public abstract int profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    public abstract int lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);
}
