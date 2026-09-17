package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

public class OccupiedRoom extends RoomState {

    private final String guestType;

    // initialization

    public OccupiedRoom(String aGuestType) {
        guestType = aGuestType;
    }

    // testing

    @Override
    public boolean isOccupied() {
        return true;
    }

    // accounting

    @Override
    public Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        if (aPriceList.containsKey(guestType)) {
            return aPriceList.get(guestType);
        }
        return unknownGuestTypeBlock.get();
    }

    @Override
    public Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
