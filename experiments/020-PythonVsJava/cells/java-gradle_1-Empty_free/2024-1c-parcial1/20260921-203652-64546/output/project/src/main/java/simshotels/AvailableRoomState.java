package simshotels;

import java.util.Collections;
import java.util.Map;
import java.util.function.Supplier;

class AvailableRoomState extends RoomState {

    // guests

    @Override
    public RoomState receive(String aGuestType) {
        return new OccupiedRoomState(aGuestType);
    }

    @Override
    public RoomState reserve() {
        return new ReservedRoomState();
    }

    // testing

    @Override
    public boolean isAvailable() {
        return true;
    }

    @Override
    public boolean isOccupied() {
        return false;
    }

    @Override
    public boolean isReserved() {
        return false;
    }

    // accounting

    @Override
    public Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }

    @Override
    public Integer lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.max(aPriceList.values());
    }
}
