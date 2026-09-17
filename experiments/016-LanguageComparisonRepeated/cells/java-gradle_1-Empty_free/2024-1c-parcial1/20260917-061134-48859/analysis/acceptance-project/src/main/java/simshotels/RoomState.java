package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

abstract class RoomState {

    // guests (by default a transition is not allowed; each state overrides the ones it accepts)

    RoomState receive(String aGuestType) {
        throw new RuntimeException(Room.roomIsNotEmptyErrorDescription());
    }

    RoomState receiveWithReservation(String aGuestType) {
        throw new RuntimeException(Room.roomIsNotReservedErrorDescription());
    }

    RoomState reserve() {
        throw new RuntimeException(Room.roomIsNotEmptyErrorDescription());
    }

    // testing

    boolean isAvailable() {
        return false;
    }

    boolean isOccupied() {
        return false;
    }

    boolean isReserved() {
        return false;
    }

    // accounting

    abstract Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    abstract Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);
}
