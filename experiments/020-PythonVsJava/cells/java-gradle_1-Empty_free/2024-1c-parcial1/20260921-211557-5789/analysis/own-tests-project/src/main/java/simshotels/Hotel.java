package simshotels;

import java.util.ArrayList;
import java.util.List;
import java.util.function.ToIntFunction;

public class Hotel {

    private final List<Floor> floors;

    // instance creation (class side)

    public static Hotel withFloors(List<Floor> aFloorsCollection) {
        Hotel.assertHaveFloors(aFloorsCollection);

        return new Hotel(aFloorsCollection);
    }

    // initialization

    private Hotel(List<Floor> aFloorsCollection) {
        floors = new ArrayList<>(aFloorsCollection);
    }

    // testing

    public boolean isEmpty() {
        return floors.stream().allMatch(Floor::isAvailable);
    }

    // accounting

    public int totalLosses() {
        return totalOfFloors(Floor::totalLosses);
    }

    public int totalProfits() {
        return totalOfFloors(Floor::totalProfits);
    }

    // totals

    public int totalRooms() {
        return totalOfFloors(Floor::totalRooms);
    }

    public int totalRoomsAvailable() {
        return totalOfFloors(Floor::totalRoomsAvailable);
    }

    public int totalRoomsOccupied() {
        return totalOfFloors(Floor::totalRoomsOccupied);
    }

    public int totalRoomsReserved() {
        return totalOfFloors(Floor::totalRoomsReserved);
    }

    private int totalOfFloors(ToIntFunction<Floor> aTotalOfFloor) {
        return floors.stream().mapToInt(aTotalOfFloor).sum();
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

    // accessing

    private Floor floorAt(int aFloorNumber) {
        if (aFloorNumber < 1 || aFloorNumber > floors.size()) {
            Hotel.signalFloorNumberDoesNotExist();
        }

        return floors.get(aFloorNumber - 1);
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
