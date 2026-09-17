package simshotels;

import java.util.Collections;
import java.util.HashMap;
import java.util.function.Supplier;

public class Room {

    private static final String RESERVED = "reserved";

    private String guest;

    // guests

    public String guestType() {
        return guest;
    }

    public void receive(String aGuestType) {
        // Room Occupied
        if (guest != null || RESERVED.equals(guest)) {
            throw new RuntimeException(Room.roomIsNotEmptyErrorDescription());
        } else {
            guest = aGuestType;
        }
    }

    public void receiveWithReservation(String aGuestType) {
        // Room Reserved
        if (RESERVED.equals(guest)) {
            guest = aGuestType;
        } else {
            throw new RuntimeException(Room.roomIsNotReservedErrorDescription());
        }
    }

    public void reserve() {
        // Room Occupied
        if (guest != null || RESERVED.equals(guest)) {
            throw new RuntimeException(Room.roomIsNotEmptyErrorDescription());
        } else {
            guest = RESERVED;
        }
    }

    // testing

    public boolean isAvailable() {
        return guest == null;
    }

    public boolean isOccupied() {
        return guest != null || RESERVED.equals(guest);
    }

    public boolean isReserved() {
        return RESERVED.equals(guest);
    }

    // accounting

    public Integer profitUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        // Room Available
        if (guest == null) {
            return 0;
        }

        // Room Reserved
        if (RESERVED.equals(guest)) {
            return Collections.min(aPriceList.values()) / 2;
        }

        // Room Occupied
        if (guest != null || RESERVED.equals(guest)) {
            if (aPriceList.containsKey(guest)) {
                return aPriceList.get(guest);
            } else {
                return unknownGuestTypeBlock.get();
            }
        }

        return null;
    }

    public Integer lossUsingIfAbsentGuestType(HashMap<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        // Not implemented yet: in the Smalltalk original this message does not exist in Room
        // (sending it raises MessageNotUnderstood). Java needs the method to compile the tests.
        throw new UnsupportedOperationException("Room does not understand lossUsingIfAbsentGuestType");
    }

    // error messages (class side)

    public static String roomIsNotEmptyErrorDescription() {
        return "Room is not empty.";
    }

    public static String roomIsNotReservedErrorDescription() {
        return "Room is not reserved.";
    }
}
