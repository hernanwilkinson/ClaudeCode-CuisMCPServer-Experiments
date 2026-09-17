package simshotels;

import java.util.Collections;
import java.util.Map;
import java.util.function.Supplier;

class ReservedRoom extends RoomState {

    // guests

    @Override
    RoomState receiveWithReservation(String aGuestType) {
        return new OccupiedRoom(aGuestType);
    }

    // testing

    @Override
    boolean isAvailable() {
        return false;
    }

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
    Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.min(aPriceList.values()) / 2;
    }

    @Override
    Integer lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
