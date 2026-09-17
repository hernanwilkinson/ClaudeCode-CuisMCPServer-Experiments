package simshotels;

import java.util.Collections;
import java.util.HashMap;
import java.util.function.Supplier;

class ReservedRoomState extends RoomState {

    // guests

    @Override
    RoomState receiveWithReservation(String aGuestType) {
        return new OccupiedRoomState(aGuestType);
    }

    // testing

    @Override
    boolean isOccupied() {
        return true;
    }

    @Override
    boolean isReserved() {
        return true;
    }

    // accounting

    @Override
    Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.min(aPriceList.values()) / 2;
    }
}
