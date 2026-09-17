package simshotels;

import java.util.Map;
import java.util.function.Supplier;

class OccupiedRoomState extends RoomState {

    private final String guestType;

    // initialization

    OccupiedRoomState(String aGuestType) {
        guestType = aGuestType;
    }

    // testing

    @Override
    boolean isOccupied() {
        return true;
    }

    // accounting

    @Override
    Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        if (!aPriceList.containsKey(guestType)) {
            return unknownGuestTypeBlock.get();
        }
        return aPriceList.get(guestType);
    }

    @Override
    Integer lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
