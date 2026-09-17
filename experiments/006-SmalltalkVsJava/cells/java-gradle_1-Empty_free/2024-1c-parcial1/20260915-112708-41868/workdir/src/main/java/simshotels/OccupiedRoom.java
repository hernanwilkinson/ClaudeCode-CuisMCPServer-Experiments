package simshotels;

import java.util.Map;
import java.util.function.Supplier;

class OccupiedRoom extends RoomState {

    private final String guestType;

    // initialization

    OccupiedRoom(String aGuestType) {
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
    Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        if (aPriceList.containsKey(guestType)) {
            return aPriceList.get(guestType);
        }

        return unknownGuestTypeBlock.get();
    }

    @Override
    Integer lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
