package simshotels;

import java.util.Collections;
import java.util.HashMap;
import java.util.function.Supplier;

public class AvailableRoomState extends RoomState {

    // guests

    @Override
    public void receiveIn(Room aRoom, String aGuestType) {
        aRoom.changeStateTo(RoomState.occupiedBy(aGuestType));
    }

    @Override
    public void receiveWithReservationIn(Room aRoom, String aGuestType) {
        Room.signalRoomIsNotReserved();
    }

    @Override
    public void reserveIn(Room aRoom) {
        aRoom.changeStateTo(RoomState.reserved());
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
    public Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }

    @Override
    public Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return Collections.max(aPriceList.values());
    }
}
