package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

abstract class RoomState {

    // guests

    RoomState receive(String aGuestType) {
        throw Room.roomIsNotEmptyError();
    }

    RoomState receiveWithReservation(String aGuestType) {
        throw Room.roomIsNotReservedError();
    }

    RoomState reserve() {
        throw Room.roomIsNotEmptyError();
    }

    // testing

    abstract boolean isAvailable();

    abstract boolean isOccupied();

    abstract boolean isReserved();

    // accounting

    abstract Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    abstract Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);
}
