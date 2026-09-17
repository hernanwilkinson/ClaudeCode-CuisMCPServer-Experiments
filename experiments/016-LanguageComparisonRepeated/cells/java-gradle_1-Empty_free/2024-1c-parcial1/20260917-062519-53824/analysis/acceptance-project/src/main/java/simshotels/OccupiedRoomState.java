package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

class OccupiedRoomState extends RoomState {

    private final String guestType;

    // initialization

    OccupiedRoomState(String aGuestType) {
        guestType = aGuestType;
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
        return false;
    }

    // accounting

    @Override
    Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        if (aPriceList.containsKey(guestType)) {
            return aPriceList.get(guestType);
        }
        return unknownGuestTypeBlock.get();
    }

    @Override
    Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
