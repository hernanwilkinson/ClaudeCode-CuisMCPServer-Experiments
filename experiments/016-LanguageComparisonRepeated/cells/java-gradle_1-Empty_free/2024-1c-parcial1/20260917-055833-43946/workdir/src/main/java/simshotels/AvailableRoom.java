package simshotels;

import java.util.Collections;
import java.util.HashMap;
import java.util.function.Supplier;

public class AvailableRoom extends RoomState {

    // guests

    @Override
    public RoomState receive(String aGuestType) {
        return new OccupiedRoom(aGuestType);
    }

    @Override
    public RoomState reserve() {
        return new ReservedRoom();
    }

    // testing

    @Override
    public boolean isAvailable() {
        return true;
    }

    // accounting

    @Override
    public Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }

    @Override
    public Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.max(aPriceList.values());
    }
}
