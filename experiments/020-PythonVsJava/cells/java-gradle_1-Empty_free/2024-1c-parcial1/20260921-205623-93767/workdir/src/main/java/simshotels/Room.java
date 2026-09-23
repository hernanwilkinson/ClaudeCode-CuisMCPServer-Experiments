package simshotels;

import java.util.HashMap;
import java.util.function.Supplier;

public class Room {

    private RoomState state;

    // initialization

    public Room() {
        state = new AvailableRoomState();
    }

    // guests

    public void receive(String aGuestType) {
        state = state.receive(aGuestType);
    }

    public void receiveWithReservation(String aGuestType) {
        state = state.receiveWithReservation(aGuestType);
    }

    public void reserve() {
        state = state.reserve();
    }

    // testing

    public boolean isAvailable() {
        return state.isAvailable();
    }

    public boolean isOccupied() {
        return state.isOccupied();
    }

    public boolean isReserved() {
        return state.isReserved();
    }

    // accounting

    public Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return state.profitUsingIfAbsentGuestType(aPriceList, unknownGuestTypeBlock);
    }

    public Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return state.lossUsingIfAbsentGuestType(aPriceList, unknownGuestTypeBlock);
    }

    // error messages (class side)

    public static String roomIsNotEmptyErrorDescription() {
        return "Room is not empty.";
    }

    public static String roomIsNotReservedErrorDescription() {
        return "Room is not reserved.";
    }

    // exceptions (class side)

    public static RuntimeException roomIsNotEmptyError() {
        return new RuntimeException(Room.roomIsNotEmptyErrorDescription());
    }

    public static RuntimeException roomIsNotReservedError() {
        return new RuntimeException(Room.roomIsNotReservedErrorDescription());
    }
}
