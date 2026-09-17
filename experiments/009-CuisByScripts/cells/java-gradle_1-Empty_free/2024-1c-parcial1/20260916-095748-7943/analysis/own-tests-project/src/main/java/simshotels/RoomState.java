package simshotels;

import java.util.Map;
import java.util.function.Supplier;

abstract class RoomState {

    // guests

    abstract RoomState receive(String aGuestType);

    abstract RoomState receiveWithReservation(String aGuestType);

    abstract RoomState reserve();

    // testing

    abstract boolean isAvailable();

    abstract boolean isOccupied();

    abstract boolean isReserved();

    // accounting

    abstract int profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    abstract int lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    // exceptions

    protected RoomState signalRoomIsNotEmpty() {
        throw new RuntimeException(Room.roomIsNotEmptyErrorDescription());
    }

    protected RoomState signalRoomIsNotReserved() {
        throw new RuntimeException(Room.roomIsNotReservedErrorDescription());
    }
}
