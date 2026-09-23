package simshotels;

import java.util.Collections;
import java.util.HashMap;
import java.util.function.Supplier;

public class ReservedRoomState extends RoomState {

    // guests

    @Override
    public void receiveIn(Room aRoom, String aGuestType) {
        Room.signalRoomIsNotEmpty();
    }

    @Override
    public void receiveWithReservationIn(Room aRoom, String aGuestType) {
        aRoom.changeStateTo(RoomState.occupiedBy(aGuestType));
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
