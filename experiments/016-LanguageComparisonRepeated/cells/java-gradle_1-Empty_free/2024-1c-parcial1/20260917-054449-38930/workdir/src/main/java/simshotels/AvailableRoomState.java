package simshotels;

import java.util.Collections;
import java.util.Map;
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
