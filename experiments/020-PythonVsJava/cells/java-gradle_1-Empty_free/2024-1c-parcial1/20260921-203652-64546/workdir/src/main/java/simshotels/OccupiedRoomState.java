package simshotels;

import java.util.Map;
import java.util.function.Supplier;

class OccupiedRoomState extends NotAvailableRoomState {

    private final String guestType;

    OccupiedRoomState(String aGuestType) {
        guestType = aGuestType;
    }

    // testing

    @Override
    public boolean isReserved() {
        return false;
    }

    // accounting

    @Override
    public Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        if (aPriceList.containsKey(guestType)) {
            return aPriceList.get(guestType);
        }

        return unknownGuestTypeBlock.get();
    }
}
