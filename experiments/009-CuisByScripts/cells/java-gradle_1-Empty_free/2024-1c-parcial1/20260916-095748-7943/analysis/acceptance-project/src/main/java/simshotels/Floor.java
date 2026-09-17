package simshotels;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.IntStream;

public class Floor {

    private final List<Room> rooms;
    private final Map<String, Integer> prices;

    // instance creation (class side)

    public static Floor withNumberOfRoomsAndPrices(Number aNumberOfRooms, Map<String, Integer> aPriceList) {
        Floor.assertIsValidNumberOfRooms(aNumberOfRooms);
        Floor.assertIsValidPriceList(aPriceList);

        return new Floor(aNumberOfRooms.intValue(), aPriceList);
    }

    private Floor(int aNumberOfRooms, Map<String, Integer> aPriceList) {
        rooms = new ArrayList<>();
        IntStream.rangeClosed(1, aNumberOfRooms).forEach(roomNumber -> rooms.add(new Room()));
        prices = new HashMap<>(aPriceList);
    }

    // guests

    public void receiveAtRoom(String aGuestType, int aRoomNumber) {
        roomNumbered(aRoomNumber).receive(aGuestType);
    }

    public void receiveWithReservationAtRoom(String aGuestType, int aRoomNumber) {
        roomNumbered(aRoomNumber).receiveWithReservation(aGuestType);
    }

    public void reserveRoom(int aRoomNumber) {
        roomNumbered(aRoomNumber).reserve();
    }

    private Room roomNumbered(int aRoomNumber) {
        if (aRoomNumber < 1 || aRoomNumber > rooms.size()) {
            Floor.signalRoomNumberDoesNotExist();
        }
        return rooms.get(aRoomNumber - 1);
    }

    // testing

    public boolean isAvailable() {
        return rooms.stream().allMatch(Room::isAvailable);
    }

    // accounting

    public int totalLosses() {
        return sumOverRooms(room -> room.lossUsingIfAbsentGuestType(prices, unknownGuestTypeBlock()));
    }

    public int totalProfits() {
        return sumOverRooms(room -> room.profitUsingIfAbsentGuestType(prices, unknownGuestTypeBlock()));
    }

    private int sumOverRooms(ToIntFunction<Room> aRoomValue) {
        return rooms.stream().mapToInt(aRoomValue).sum();
    }

    private Supplier<Integer> unknownGuestTypeBlock() {
        return () -> {
            Floor.signalUnknownGuestType();
            return null;
        };
    }

    // totals

    public int totalRooms() {
        return rooms.size();
    }

    public int totalRoomsAvailable() {
        return countRooms(Room::isAvailable);
    }

    public int totalRoomsOccupied() {
        return countRooms(Room::isOccupied);
    }

    public int totalRoomsReserved() {
        return countRooms(Room::isReserved);
    }

    private int countRooms(Predicate<Room> aCondition) {
        return (int) rooms.stream().filter(aCondition).count();
    }

    // assertions (class side)

    private static void assertIsValidNumberOfRooms(Number aNumberOfRooms) {
        Floor.assertIsPositiveIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBePositive());
        Floor.assertIsIntegerIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBeInteger());
    }

    private static void assertIsValidPriceList(Map<String, Integer> aPriceList) {
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
