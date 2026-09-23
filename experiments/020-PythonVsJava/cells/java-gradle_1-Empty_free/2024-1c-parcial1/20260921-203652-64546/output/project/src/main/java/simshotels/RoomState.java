package simshotels;

import java.util.Map;
import java.util.function.Supplier;

/**
 * The state of a {@link Room}: available, reserved or occupied. Each state knows which
 * transitions it accepts and how much a room in that state earns or loses.
 */
abstract class RoomState {

    // guests

    public abstract RoomState receive(String aGuestType);

    /** Only a reserved room can receive the guest of its reservation. */
    public RoomState receiveWithReservation(String aGuestType) {
        Room.signalRoomIsNotReserved();
        return this;
    }

    public abstract RoomState reserve();

    // testing

    public abstract boolean isAvailable();

    public abstract boolean isOccupied();

    public abstract boolean isReserved();

    // accounting

    public abstract Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    public abstract Integer lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);
}
