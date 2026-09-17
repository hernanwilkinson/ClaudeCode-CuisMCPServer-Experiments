package simshotels;

import java.util.Map;
import java.util.function.Supplier;

abstract class RoomState {

    // guests

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

    abstract Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    abstract Integer lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);
}
