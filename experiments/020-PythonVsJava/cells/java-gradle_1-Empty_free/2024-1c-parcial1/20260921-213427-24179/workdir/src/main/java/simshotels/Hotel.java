package simshotels;

import java.util.ArrayList;
import java.util.function.ToIntFunction;

public class Hotel {

    private final ArrayList<Floor> floors;

    // initialization

    public Hotel(ArrayList<Floor> aFloorsCollection) {
        Hotel.assertHaveFloors(aFloorsCollection);

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

    private int totalOfFloors(ToIntFunction<Floor> aFloorTotal) {
        return floors.stream().mapToInt(aFloorTotal).sum();
    }

    // testing

    public boolean isEmpty() {
        return floors.stream().allMatch(Floor::isAvailable);
    }

    // private

    private Floor floorAt(int aFloorNumber) {
        if (aFloorNumber < 1 || aFloorNumber > floors.size()) {
            Hotel.signalFloorNumberDoesNotExist();
        }

        return floors.get(aFloorNumber - 1);
    }

    // assertions (class side)

    public static void assertHaveFloors(ArrayList<Floor> aFloorsCollection) {
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

    // exceptions (class side)

    public static void signalFloorNumberDoesNotExist() {
        throw new RuntimeException(Hotel.floorNumberDoesNotExistErrorDescription());
    }

    public static void signalNoFloors() {
        throw new RuntimeException(Hotel.noFloorsErrorDescription());
    }
}
