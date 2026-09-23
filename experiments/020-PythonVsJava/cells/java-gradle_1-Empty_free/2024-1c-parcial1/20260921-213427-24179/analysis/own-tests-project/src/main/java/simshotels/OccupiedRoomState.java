package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

public class OccupiedRoomState extends RoomState {

    private final String guestType;

    // initialization

    public OccupiedRoomState(String aGuestType) {
        guestType = aGuestType;
    }

    // guests

    @Override
    public void receiveIn(Room aRoom, String aGuestType) {
        Room.signalRoomIsNotEmpty();
    }

    @Override
    public void receiveWithReservationIn(Room aRoom, String aGuestType) {
        Room.signalRoomIsNotReserved();
    }

    @Override
    public void reserveIn(Room aRoom) {
        Room.signalRoomIsNotEmpty();
    }

    // testing

    @Override
    public boolean isAvailable() {
        return false;
    }

    @Override
    public boolean isOccupied() {
        return true;
    }

    @Override
    public boolean isReserved() {
        return false;
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
