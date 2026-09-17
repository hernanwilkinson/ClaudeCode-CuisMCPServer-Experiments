package simshotels;

import java.util.Map;
import java.util.function.Supplier;

/**
 * The state of a Room: available, occupied or reserved. Each state answers the new state of the
 * room after receiving a guest or taking a reservation, and signals an error when the room is not
 * in a state that accepts them.
 */
abstract class RoomState {

    // guests

    RoomState receive(String aGuestType) {
        Room.signalRoomIsNotEmpty();
        return this;
    }

    RoomState receiveWithReservation(String aGuestType) {
        Room.signalRoomIsNotReserved();
        return this;
    }

    RoomState reserve() {
        Room.signalRoomIsNotEmpty();
        return this;
    }

    // testing

    abstract boolean isAvailable();

    abstract boolean isOccupied();

    abstract boolean isReserved();

    // accounting

    abstract Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    abstract Integer lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);
}
