package simshotels;

import java.util.Map;
import java.util.function.Supplier;

class OccupiedRoom extends RoomState {

    private final String guestType;

    OccupiedRoom(String aGuestType) {
        guestType = aGuestType;
    }

    // guests

    @Override
    RoomState receive(String aGuestType) {
        return signalRoomIsNotEmpty();
    }

    @Override
    RoomState receiveWithReservation(String aGuestType) {
        return signalRoomIsNotReserved();
    }

    @Override
    RoomState reserve() {
        return signalRoomIsNotEmpty();
    }

    // testing

    @Override
    boolean isAvailable() {
        return false;
    }

    @Override
    boolean isOccupied() {
        return true;
    }

    @Override
    boolean isReserved() {
        return false;
    }

    // accounting

    @Override
    int profitUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        if (aPriceList.containsKey(guestType)) {
            return aPriceList.get(guestType);
        }
        return unknownGuestTypeBlock.get();
    }

    @Override
    int lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
