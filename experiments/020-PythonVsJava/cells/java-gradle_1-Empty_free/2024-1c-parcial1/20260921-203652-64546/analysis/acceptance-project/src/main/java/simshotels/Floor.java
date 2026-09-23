package simshotels;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;

public class Floor {

    private final List<Room> rooms;
    private final Map<String, Integer> prices;

    // initialization

    private Floor(int aNumberOfRooms, Map<String, Integer> aPriceList) {
        prices = new HashMap<>(aPriceList);
        rooms = new ArrayList<>();

        for (int roomNumber = 1; roomNumber <= aNumberOfRooms; roomNumber++) {
            rooms.add(new Room());
        }
    }

    // instance creation (class side)

    public static Floor withNumberOfRoomsAndPrices(Number aNumberOfRooms, Map<String, Integer> aPriceList) {
        Floor.assertIsPositiveIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBePositive());
        Floor.assertIsIntegerIfFalse(aNumberOfRooms, () -> Floor.signalNumberOfRoomsMustBeInteger());
        Floor.assertArePrices(aPriceList);

        return new Floor(aNumberOfRooms.intValue(), aPriceList);
    }

    // testing

    public boolean isAvailable() {
        return totalRooms() == totalRoomsAvailable();
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

    // accounting

    public int totalLosses() {
        return totalOfRooms(room -> room.lossUsingIfAbsentGuestType(prices, Floor.unknownGuestTypeBlock()));
    }

    public int totalProfits() {
        return totalOfRooms(room -> room.profitUsingIfAbsentGuestType(prices, Floor.unknownGuestTypeBlock()));
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

    // private

    private Room roomAt(int aRoomNumber) {
        if (aRoomNumber < 1 || aRoomNumber > totalRooms()) {
            Floor.signalRoomNumberDoesNotExist();
        }

        return rooms.get(aRoomNumber - 1);
    }

    private int totalOfRooms(ToIntFunction<Room> aRoomAmount) {
        return rooms.stream().mapToInt(aRoomAmount).sum();
    }

    private int totalRoomsThat(Predicate<Room> aCondition) {
        return (int) rooms.stream().filter(aCondition).count();
    }

    private static Supplier<Integer> unknownGuestTypeBlock() {
        return () -> {
            Floor.signalUnknownGuestType();
            return null;
        };
    }

    // assertions (class side)

    public static void assertArePrices(Map<String, Integer> aPriceList) {
        if (aPriceList.isEmpty()) {
            Floor.signalNoPrices();
        }

        for (Integer price : aPriceList.values()) {
            Floor.assertIsPositiveIfFalse(price, () -> Floor.signalPriceMustBePositive());
        }
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

    public static String priceMustBeIntegerErrorDescription() {
        return "Price must be integer";
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

    public static void signalPriceMustBeInteger() {
        throw new RuntimeException(Floor.priceMustBeIntegerErrorDescription());
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
