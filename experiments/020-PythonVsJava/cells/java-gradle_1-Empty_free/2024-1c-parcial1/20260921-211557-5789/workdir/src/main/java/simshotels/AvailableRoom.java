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
    public RoomState receiveWithReservation(String aGuestType) {
        Room.signalRoomIsNotReserved();
        return this;
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

    @Override
    public boolean isOccupied() {
        return false;
    }

    @Override
    public boolean isReserved() {
        return false;
    }

    // accounting

    @Override
    public int profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }

    @Override
    public int lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.max(aPriceList.values());
    }
}
