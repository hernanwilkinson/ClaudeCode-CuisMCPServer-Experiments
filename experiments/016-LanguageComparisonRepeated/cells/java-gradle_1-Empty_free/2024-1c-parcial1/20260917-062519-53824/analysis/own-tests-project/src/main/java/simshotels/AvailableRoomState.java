package simshotels;

import java.util.Collections;
import java.util.HashMap;
import java.util.function.Supplier;

class AvailableRoomState extends RoomState {

    // guests

    @Override
    RoomState receive(String aGuestType) {
        return new OccupiedRoomState(aGuestType);
    }

    @Override
    RoomState reserve() {
        return new ReservedRoomState();
    }

    // testing

    @Override
    boolean isAvailable() {
        return true;
    }

    @Override
    boolean isOccupied() {
        return false;
    }

    @Override
    boolean isReserved() {
        return false;
    }

    // accounting

    @Override
    Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }

    @Override
    Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.max(aPriceList.values());
    }
}
