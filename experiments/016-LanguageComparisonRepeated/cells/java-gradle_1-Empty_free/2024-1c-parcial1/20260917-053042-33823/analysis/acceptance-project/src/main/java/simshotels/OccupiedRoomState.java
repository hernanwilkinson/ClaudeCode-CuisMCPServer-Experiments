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
    boolean isOccupied() {
        return true;
    }

    // accounting

    @Override
    Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        if (aPriceList.containsKey(guestType)) {
            return aPriceList.get(guestType);
        }
        return unknownGuestTypeBlock.get();
    }
}
