package simshotels;

import java.util.Collections;
import java.util.HashMap;
import java.util.function.Supplier;

public class ReservedRoom extends RoomState {

    // guests

    @Override
    public RoomState receiveWithReservation(String aGuestType) {
        return new OccupiedRoom(aGuestType);
    }

    // testing

    @Override
    public boolean isOccupied() {
        return true;
    }

    @Override
    public boolean isReserved() {
        return true;
    }

    // accounting

    @Override
    public Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.min(aPriceList.values()) / 2;
    }

    @Override
    public Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
