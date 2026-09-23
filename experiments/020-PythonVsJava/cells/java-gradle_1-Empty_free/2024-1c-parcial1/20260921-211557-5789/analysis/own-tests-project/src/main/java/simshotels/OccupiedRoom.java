package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

public class OccupiedRoom extends UnavailableRoom {

    private final String guestType;

    // initialization

    public OccupiedRoom(String aGuestType) {
        guestType = aGuestType;
    }

    // guests

    @Override
    public RoomState receiveWithReservation(String aGuestType) {
        Room.signalRoomIsNotReserved();
        return this;
    }

    // testing

    @Override
    public boolean isReserved() {
        return false;
    }

    // accounting

    @Override
    public int profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return priceOfGuestInIfAbsent(aPriceList, unknownGuestTypeBlock);
    }

    @Override
    public int lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        // an occupied room loses nothing, but its guest type has to be one of the known ones
        priceOfGuestInIfAbsent(aPriceList, unknownGuestTypeBlock);

        return 0;
    }

    private int priceOfGuestInIfAbsent(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        if (aPriceList.containsKey(guestType)) {
            return aPriceList.get(guestType);
        }

        return unknownGuestTypeBlock.get();
    }
}
