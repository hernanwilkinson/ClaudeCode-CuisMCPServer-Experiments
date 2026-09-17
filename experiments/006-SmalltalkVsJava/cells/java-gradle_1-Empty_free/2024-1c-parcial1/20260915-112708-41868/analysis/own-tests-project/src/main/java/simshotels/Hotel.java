package simshotels;

import java.util.List;
import java.util.function.ToIntFunction;

public class Hotel {

    private final List<Floor> floors;

    // instance creation (class side)

    public static Hotel with(List<Floor> aFloorsCollection) {
        Hotel.assertHaveFloors(aFloorsCollection);

        return new Hotel(aFloorsCollection);
    }

    // initialization

    private Hotel(List<Floor> aFloorsCollection) {
        floors = aFloorsCollection;
    }

    // guests

    public void receiveAtFloorAtRoom(String aGuestType, int aFloorNumber, int aRoomNumber) {
        floorAt(aFloorNumber).receiveAtRoom(aGuestType, aRoomNumber);
    }

    public void receiveWithReservationAtFloorAtRoom(String aGuestType, int aFloorNumber, int aRoomNumber) {
        floorAt(aFloorNumber).receiveWithReservationAtRoom(aGuestType, aRoomNumber);
    }

    public void reserveRoomAtFloor(int aRoomNumber, int aFloorNumber) {
        floorAt(aFloorNumber).reserveRoom(aRoomNumber);
    }

    // accounting

    public int totalLosses() {
        return totalOf(Floor::totalLosses);
    }

    public int totalProfits() {
        return totalOf(Floor::totalProfits);
    }

    // totals

    public int totalRooms() {
        return totalOf(Floor::totalRooms);
    }

    public int totalRoomsAvailable() {
        return totalOf(Floor::totalRoomsAvailable);
    }

    public int totalRoomsOccupied() {
        return totalOf(Floor::totalRoomsOccupied);
    }

    public int totalRoomsReserved() {
        return totalOf(Floor::totalRoomsReserved);
    }

    // testing

    public boolean isEmpty() {
        return floors.stream().allMatch(Floor::isAvailable);
    }

    // accessing

    private Floor floorAt(int aFloorNumber) {
        if (aFloorNumber < 1 || aFloorNumber > floors.size()) {
            Hotel.signalFloorNumberDoesNotExist();
        }

        return floors.get(aFloorNumber - 1);
    }

    private int totalOf(ToIntFunction<Floor> aFloorTotal) {
        return floors.stream().mapToInt(aFloorTotal).sum();
    }

    // assertions (class side)

    public static void assertHaveFloors(List<Floor> aFloorsCollection) {
        if (aFloorsCollection.isEmpty()) {
            Hotel.signalNoFloors();
        }
    }

    // error description (class side)

    public static String floorNumberDoesNotExistErrorDescription() {
        return "Floor number does not exist";
    }

    public static String noFloorsErrorDescription() {
        return "Cannot have a Hotel without floors";
    }

    public static String roomNumberDoesNotExistErrorDescription() {
        return Floor.roomNumberDoesNotExistErrorDescription();
    }

    // exceptions (class side)

    public static void signalFloorNumberDoesNotExist() {
        throw new RuntimeException(Hotel.floorNumberDoesNotExistErrorDescription());
    }

    public static void signalNoFloors() {
        throw new RuntimeException(Hotel.noFloorsErrorDescription());
    }
}
