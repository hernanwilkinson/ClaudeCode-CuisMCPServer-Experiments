package simshotels;

import java.util.Collections;
import java.util.HashMap;
import java.util.function.Supplier;

public class ReservedRoom extends UnavailableRoom {

    // guests

    @Override
    public RoomState receiveWithReservation(String aGuestType) {
        return new OccupiedRoom(aGuestType);
    }

    // testing

    @Override
    public boolean isReserved() {
        return true;
    }

    // accounting

    @Override
    public int profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.min(aPriceList.values()) / 2;
    }

    @Override
    public int lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
