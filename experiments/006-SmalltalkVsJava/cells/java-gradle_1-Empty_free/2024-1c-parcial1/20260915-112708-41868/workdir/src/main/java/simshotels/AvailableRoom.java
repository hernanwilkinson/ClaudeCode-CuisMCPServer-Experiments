package simshotels;

import java.util.Collections;
import java.util.Map;
import java.util.function.Supplier;

class AvailableRoom extends RoomState {

    // guests

    @Override
    RoomState receive(String aGuestType) {
        return new OccupiedRoom(aGuestType);
    }

    @Override
    RoomState reserve() {
        return new ReservedRoom();
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
    Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }

    @Override
    Integer lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.max(aPriceList.values());
    }
}
