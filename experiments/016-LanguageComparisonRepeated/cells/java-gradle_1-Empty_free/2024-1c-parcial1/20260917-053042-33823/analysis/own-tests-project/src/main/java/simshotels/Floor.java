package simshotels;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class Floor {

    private final ArrayList<Room> rooms;
    private final HashMap<String, Integer> prices;

    // instance creation (class side)

    public static Floor withRoomsAndPrices(Number aNumberOfRooms, HashMap<String, Integer> aPriceList) {
        Floor.assertIsPositiveIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBePositive());
        Floor.assertIsIntegerIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBeInteger());
        Floor.assertValidPrices(aPriceList);

        return new Floor(aNumberOfRooms.intValue(), aPriceList);
    }

    // initialization

    private Floor(int aNumberOfRooms, HashMap<String, Integer> aPriceList) {
        rooms = new ArrayList<>();
        for (int ix = 1; ix <= aNumberOfRooms; ix++) {
            rooms.add(new Room());
        }
        prices = aPriceList;
    }

    // testing

    public boolean isAvailable() {
        return rooms.stream().allMatch(Room::isAvailable);
    }

    public boolean hasRoomNumber(int aRoomNumber) {
        return aRoomNumber >= 1 && aRoomNumber <= totalRooms();
    }

    // accessing

    public void withRoomNumberDoIfNone(int aRoomNumber, Consumer<Room> aRoomBlock, Runnable ifNoneBlock) {
        if (hasRoomNumber(aRoomNumber)) {
            aRoomBlock.accept(rooms.get(aRoomNumber - 1));
        } else {
            ifNoneBlock.run();
        }
    }

    // accounting

    public int totalLosses() {
        return rooms.stream()
            .mapToInt(room -> room.lossUsingIfAbsentGuestType(prices, Floor::unknownGuestType))
            .sum();
    }

    public int totalProfits() {
        return rooms.stream()
            .mapToInt(room -> room.profitUsingIfAbsentGuestType(prices, Floor::unknownGuestType))
            .sum();
    }

    // totals

    public int totalRooms() {
        return rooms.size();
    }

    public int totalRoomsAvailable() {
        return countRoomsThat(Room::isAvailable);
    }

    public int totalRoomsOccupied() {
        return countRoomsThat(Room::isOccupied);
    }

    public int totalRoomsReserved() {
        return countRoomsThat(Room::isReserved);
    }

    private int countRoomsThat(Predicate<Room> aCondition) {
        return (int) rooms.stream().filter(aCondition).count();
    }

    // assertions (class side)

    public static void assertIsIntegerIfFalse(Number aNumber, Runnable signalsBlock) {
        if (!(aNumber instanceof Integer)) {
            signalsBlock.run();
        }
    }

    public static void assertValidPrices(HashMap<String, Integer> aPriceList) {
        if (aPriceList.isEmpty()) {
            Floor.signalNoPrices();
        }
        aPriceList.values().forEach(price ->
            Floor.assertIsPositiveIfFalse(price, () -> Floor.signalPriceMustBePositive()));
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

    private static Integer unknownGuestType() {
        Floor.signalUnknownGuestType();
        return null;
    }
}
