package simshotels;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class Floor {

    private final ArrayList<Room> rooms;
    private final HashMap<String, Integer> prices;

    // initialization

    public Floor(Number aNumberOfRooms, HashMap<String, Integer> aPriceList) {
        Floor.assertIsValidNumberOfRooms(aNumberOfRooms);
        Floor.assertIsValidPriceList(aPriceList);

        rooms = Floor.createRooms(aNumberOfRooms.intValue());
        prices = aPriceList;
    }

    // guests

    public void receiveAtRoom(String aGuestType, int aRoomNumber) {
        roomAt(aRoomNumber).receive(aGuestType);
    }

    public void receiveWithReservationAtRoom(String aGuestType, int aRoomNumber) {
        roomAt(aRoomNumber).receiveWithReservation(aGuestType);
    }

    public void reserveRoom(int aRoomNumber) {
        roomAt(aRoomNumber).reserve();
    }

    // testing

    public boolean isAvailable() {
        return rooms.stream().allMatch(Room::isAvailable);
    }

    // accounting

    public int totalLosses() {
        return rooms.stream()
            .mapToInt(room -> room.lossUsingIfAbsentGuestType(prices, Floor.signalUnknownGuestTypeBlock()))
            .sum();
    }

    public int totalProfits() {
        return rooms.stream()
            .mapToInt(room -> room.profitUsingIfAbsentGuestType(prices, Floor.signalUnknownGuestTypeBlock()))
            .sum();
    }

    // totals

    public int totalRooms() {
        return rooms.size();
    }

    public int totalRoomsAvailable() {
        return totalRoomsThat(Room::isAvailable);
    }

    public int totalRoomsOccupied() {
        return totalRoomsThat(Room::isOccupied);
    }

    public int totalRoomsReserved() {
        return totalRoomsThat(Room::isReserved);
    }

    private int totalRoomsThat(Predicate<Room> aCondition) {
        return (int) rooms.stream().filter(aCondition).count();
    }

    // private

    private Room roomAt(int aRoomNumber) {
        if (aRoomNumber < 1 || aRoomNumber > totalRooms()) {
            Floor.signalRoomNumberDoesNotExist();
        }

        return rooms.get(aRoomNumber - 1);
    }

    private static ArrayList<Room> createRooms(int aNumberOfRooms) {
        ArrayList<Room> newRooms = new ArrayList<>();

        for (int ix = 1; ix <= aNumberOfRooms; ix++) {
            newRooms.add(new Room());
        }

        return newRooms;
    }

    private static Supplier<Integer> signalUnknownGuestTypeBlock() {
        return () -> {
            Floor.signalUnknownGuestType();
            return null;
        };
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

    public static void assertIsValidNumberOfRooms(Number aNumberOfRooms) {
        Floor.assertIsPositiveIfFalse(aNumberOfRooms, Floor::signalNumberOfRoomsMustBePositive);
        Floor.assertIsIntegerIfFalse(aNumberOfRooms, Floor::signalNumberOfRoomsMustBeInteger);
    }

    public static void assertIsValidPriceList(HashMap<String, Integer> aPriceList) {
        if (aPriceList.isEmpty()) {
            Floor.signalNoPrices();
        }

        aPriceList.values().forEach(price -> Floor.assertIsPositiveIfFalse(price, Floor::signalPriceMustBePositive));
    }

    // error messages (class side)

    public static String numberOfRoomsMustBeIntegerErrorDescription() {
        return "Number of rooms must be integer";
    }

    public static String numberOfRoomsMustBePositiveErrorDescription() {
        return "The number of rooms must be positive";
    }

    public static String priceMustBePositiveErrorDescription() {
        return "Price must be positive";
    }

    public static String pricesListCannotBeEmptyErrorDescription() {
        return "Prices List must not be empty";
    }

    public static String roomNumberDoesNotExistErrorDescription() {
        return "Room number does not exist";
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

    public static void signalPriceMustBePositive() {
        throw new RuntimeException(Floor.priceMustBePositiveErrorDescription());
    }

    public static void signalRoomNumberDoesNotExist() {
        throw new RuntimeException(Floor.roomNumberDoesNotExistErrorDescription());
    }

    public static void signalUnknownGuestType() {
        throw new RuntimeException(Floor.unknownGuestTypeErrorDescription());
    }
}
