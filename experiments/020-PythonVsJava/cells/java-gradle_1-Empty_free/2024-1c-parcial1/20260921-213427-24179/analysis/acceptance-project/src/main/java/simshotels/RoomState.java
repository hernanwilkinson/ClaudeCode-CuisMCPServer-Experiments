package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

public abstract class RoomState {

    private static final RoomState AVAILABLE = new AvailableRoomState();
    private static final RoomState RESERVED = new ReservedRoomState();

    // instance creation (class side)

    public static RoomState available() {
        return AVAILABLE;
    }

    public static RoomState reserved() {
        return RESERVED;
    }

    public static RoomState occupiedBy(String aGuestType) {
        return new OccupiedRoomState(aGuestType);
    }

    // guests

    public abstract void receiveIn(Room aRoom, String aGuestType);

    public abstract void receiveWithReservationIn(Room aRoom, String aGuestType);

    public abstract void reserveIn(Room aRoom);

    // testing

    public abstract boolean isAvailable();

    public abstract boolean isOccupied();

    public abstract boolean isReserved();

    // accounting

    public abstract Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);

    public abstract Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock);
}
