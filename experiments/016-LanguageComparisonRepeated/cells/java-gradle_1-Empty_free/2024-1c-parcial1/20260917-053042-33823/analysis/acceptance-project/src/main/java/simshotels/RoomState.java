package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

abstract class RoomState {

    // guests

    RoomState receive(String aGuestType) {
        return Room.signalRoomIsNotEmpty();
    }

    RoomState receiveWithReservation(String aGuestType) {
        return Room.signalRoomIsNotReserved();
    }

    RoomState reserve() {
        return Room.signalRoomIsNotEmpty();
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

    Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }

    Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
