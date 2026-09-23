package simshotels;

import java.util.Collections;
import java.util.Map;
import java.util.function.Supplier;

class ReservedRoomState extends NotAvailableRoomState {

    // guests

    @Override
    public RoomState receiveWithReservation(String aGuestType) {
        return new OccupiedRoomState(aGuestType);
    }

    // testing

    @Override
    public boolean isReserved() {
        return true;
    }

    // accounting

    @Override
    public Integer profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.min(aPriceList.values()) / 2;
    }
}
