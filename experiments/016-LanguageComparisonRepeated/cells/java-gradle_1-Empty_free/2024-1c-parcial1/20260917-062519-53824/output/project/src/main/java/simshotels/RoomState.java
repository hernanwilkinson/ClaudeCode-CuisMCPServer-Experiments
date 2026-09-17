package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

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

    abstract Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    abstract Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);
}
