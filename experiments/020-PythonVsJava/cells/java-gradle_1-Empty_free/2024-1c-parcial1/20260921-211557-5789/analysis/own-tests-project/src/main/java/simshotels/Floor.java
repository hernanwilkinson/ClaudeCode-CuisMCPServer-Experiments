package simshotels;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class Floor {

    private final List<Room> rooms;
    private final HashMap<String, Integer> prices;

    // instance creation (class side)

    public static Floor withNumberOfRoomsAndPrices(Number aNumberOfRooms, HashMap<String, Integer> aPriceList) {
        Floor.assertIsPositiveIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBePositive());
        Floor.assertIsIntegerIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBeInteger());
        Floor.assertArePricesValid(aPriceList);

        return new Floor(aNumberOfRooms.intValue(), aPriceList);
    }

    // initialization

    private Floor(int aNumberOfRooms, HashMap<String, Integer> aPriceList) {
        rooms = new ArrayList<>();
        for (int roomNumber = 1; roomNumber <= aNumberOfRooms; roomNumber++) {
            rooms.add(new Room());
        }

        prices = new HashMap<>(aPriceList);
    }

    // testing

    public boolean isAvailable() {
        return rooms.stream().allMatch(Room::isAvailable);
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

    // accessing

    private Room roomAt(int aRoomNumber) {
        if (aRoomNumber < 1 || aRoomNumber > rooms.size()) {
            Floor.signalRoomNumberDoesNotExist();
        }

        return rooms.get(aRoomNumber - 1);
    }

    // accounting

    public int totalLosses() {
        return rooms.stream()
            .mapToInt(room -> room.lossUsingIfAbsentGuestType(prices, unknownGuestTypeBlock()))
            .sum();
    }

    public int totalProfits() {
        return rooms.stream()
            .mapToInt(room -> room.profitUsingIfAbsentGuestType(prices, unknownGuestTypeBlock()))
            .sum();
    }

    private Supplier<Integer> unknownGuestTypeBlock() {
        return () -> {
            Floor.signalUnknownGuestType();
            return null; // not reached: signalUnknownGuestType always raises
        };
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

    // assertions (class side)

    public static void assertArePricesValid(HashMap<String, Integer> aPriceList) {
        if (aPriceList.isEmpty()) {
            Floor.signalNoPrices();
        }

        aPriceList.values().forEach(price -> Floor.assertIsPositiveIfFalse(price, () -> Floor.signalPriceMustBePositive()));
    }

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
