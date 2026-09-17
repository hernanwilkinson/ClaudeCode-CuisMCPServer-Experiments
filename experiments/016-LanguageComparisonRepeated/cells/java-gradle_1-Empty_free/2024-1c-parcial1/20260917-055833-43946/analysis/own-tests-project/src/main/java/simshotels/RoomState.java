package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

public abstract class RoomState {

    // guests

    public RoomState receive(String aGuestType) {
        throw new RuntimeException(Room.roomIsNotEmptyErrorDescription());
    }

    public RoomState receiveWithReservation(String aGuestType) {
        throw new RuntimeException(Room.roomIsNotReservedErrorDescription());
    }

    public RoomState reserve() {
        throw new RuntimeException(Room.roomIsNotEmptyErrorDescription());
    }

    // testing

    public boolean isAvailable() {
        return false;
    }

    public boolean isOccupied() {
        return false;
    }

    public boolean isReserved() {
        return false;
    }

    // accounting

    public abstract Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    public abstract Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);
}
