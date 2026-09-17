package simshotels;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

public class Floor {

    private ArrayList<Room> rooms;
    private HashMap<String, Integer> prices;

    // testing

    public boolean isAvailable() {
        return totalRooms() == totalRoomsAvailable();
    }

    // accessing

    public ArrayList<Room> rooms() {
        return rooms;
    }

    // accounting

    public int totalLosses() {
        int total;

        total = 0;
        for (Room room : rooms) {
            if (room.isAvailable()) {
                total = total + Collections.max(prices.values());
            }
        }

        return total;
    }

    public int totalProfits() {
        int total;

        total = 0;
        for (Room room : rooms) {
            Integer roomTotal;
            if (room.isOccupied()) {
                roomTotal = room.profitUsingIfAbsentGuestType(prices, () -> {
                    Floor.signalUnknownGuestType();
                    return null;
                });
                total = total + roomTotal;
            }
        }

        return total;
    }

    // setters

    public void setNumberOfRooms(Number aNumberOfRooms) {
        Floor.assertIsPositiveIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBePositive());
        Floor.assertIsIntegerIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBeInteger());

        initializeRoomsWith(aNumberOfRooms);
    }

    public void setPrices(HashMap<String, Integer> aPriceList) {
        if (aPriceList.isEmpty()) {
            Floor.signalNoPrices();
        }

        for (Integer price : aPriceList.values()) {
            Floor.assertIsPositiveIfFalse(price, () -> Floor.signalPriceMustBePositive());
        }

        initializeWith(aPriceList);
    }

    // totals

    public int totalRooms() {
        return rooms.size();
    }

    public int totalRoomsAvailable() {
        int count = 0;
        for (Room room : rooms) {
            if (room.isAvailable()) {
                count = count + 1;
            }
        }
        return count;
    }

    public int totalRoomsOccupied() {
        int count = 0;
        for (Room room : rooms) {
            if (room.isOccupied()) {
                count = count + 1;
            }
        }
        return count;
    }

    public int totalRoomsReserved() {
        int count = 0;
        for (Room room : rooms) {
            if (room.isReserved()) {
                count = count + 1;
            }
        }
        return count;
    }

    // initialization

    private void initializeRoomsWith(Number aNumberOfRooms) {
        int ix;

        rooms = new ArrayList<>();

        ix = 1;
        while (ix <= aNumberOfRooms.intValue()) {
            rooms.add(new Room());
            ix = ix + 1;
        }
    }

    private void initializeWith(HashMap<String, Integer> aPriceList) {
        prices = aPriceList;
    }

    // assertions (class side)

    public static void assertIsIntegerIfFalse(Number aNumber, Runnable signalsBlock) {
        if (!(aNumber instanceof Integer)) {
            signalsBlock.run();
        }
    }

    public static void assertIsPositiveIfFalse(Number aNumber, Runnable signalsBlock) {
        if (!(aNumber.doubleValue() > 0)) {
            signalsBlock.run();
        }
    }

    // error messages (class side)

    public static String numberOfRoomsMustBeIntegerErrorDescription() {
        return "Number of rooms must be integer";
    }

    public static String numberOfRoomsMustBePositiveErrorDescription() {
        return "The number of rooms must be positive";
    }

    public static String priceMustBeIntegerErrorDescription() {
        return "Price must be integer";
    }

    public static String priceMustBePositiveErrorDescription() {
        return "Price must be positive";
    }

    public static String pricesListCannotBeEmptyErrorDescription() {
        return "Prices List must not be empty";
    }

    public static String unknownGuestTypeErrorDescription() {
        return "The guest type is unknown";
    }

    // exceptions (class side)

    public static void signalNoPrices() {
        throw new RuntimeException(Floor.pricesListCannotBeEmptyErrorDescription());
    }

    public static void signalNumberOfRoomsMustBeInteger() {
        throw new RuntimeException(Floor.numberOfRoomsMustBeIntegerErrorDescription());
    }

    public static void signalNumberOfRoomsMustBePositive() {
        throw new RuntimeException(Floor.numberOfRoomsMustBePositiveErrorDescription());
    }

    public static void signalPriceMustBeInteger() {
        throw new RuntimeException(Floor.priceMustBeIntegerErrorDescription());
    }

    public static void signalPriceMustBePositive() {
        throw new RuntimeException(Floor.priceMustBePositiveErrorDescription());
    }

    public static void signalUnknownGuestType() {
        throw new RuntimeException(Floor.unknownGuestTypeErrorDescription());
    }
}
