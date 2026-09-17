package simshotels;

import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.ToIntFunction;

public class Hotel {

    private final ArrayList<Floor> floors;

    // instance creation (class side)

    public static Hotel withFloors(ArrayList<Floor> aFloorsCollection) {
        Hotel.assertHaveFloors(aFloorsCollection);

        return new Hotel(aFloorsCollection);
    }

    // initialization

    private Hotel(ArrayList<Floor> aFloorsCollection) {
        floors = aFloorsCollection;
    }

    // accounting

    public int totalLosses() {
        return sumOverFloors(Floor::totalLosses);
    }

    public int totalProfits() {
        return sumOverFloors(Floor::totalProfits);
    }

    // totals

    public int totalRooms() {
        return sumOverFloors(Floor::totalRooms);
    }

    public int totalRoomsAvailable() {
        return sumOverFloors(Floor::totalRoomsAvailable);
    }

    public int totalRoomsOccupied() {
        return sumOverFloors(Floor::totalRoomsOccupied);
    }

    public int totalRoomsReserved() {
        return sumOverFloors(Floor::totalRoomsReserved);
    }

    private int sumOverFloors(ToIntFunction<Floor> aFloorTotal) {
        return floors.stream().mapToInt(aFloorTotal).sum();
    }

    // testing

    public boolean isEmpty() {
        return floors.stream().allMatch(Floor::isAvailable);
    }

    // guests

    public void receiveAtFloorAtRoom(String aGuestType, int aFloorNumber, int aRoomNumber) {
        withRoomAtFloorDo(aRoomNumber, aFloorNumber, room -> room.receive(aGuestType));
    }

    public void receiveWithReservationAtFloorAtRoom(String aGuestType, int aFloorNumber, int aRoomNumber) {
        withRoomAtFloorDo(aRoomNumber, aFloorNumber, room -> room.receiveWithReservation(aGuestType));
    }

    public void reserveRoomAtFloor(int aRoomNumber, int aFloorNumber) {
        withRoomAtFloorDo(aRoomNumber, aFloorNumber, Room::reserve);
    }

    private void withRoomAtFloorDo(int aRoomNumber, int aFloorNumber, Consumer<Room> aRoomBlock) {
        floorNumber(aFloorNumber).withRoomNumberDoIfNone(aRoomNumber, aRoomBlock, Hotel::signalRoomNumberDoesNotExist);
    }

    private Floor floorNumber(int aFloorNumber) {
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

    public static String roomNumberDoesNotExistErrorDescription() {
        return "Room number does not exist";
    }

    // exceptions (class side)

    public static void signalFloorNumberDoesNotExist() {
        throw new RuntimeException(Hotel.floorNumberDoesNotExistErrorDescription());
    }

    public static void signalNoFloors() {
        throw new RuntimeException(Hotel.noFloorsErrorDescription());
    }

    public static void signalRoomNumberDoesNotExist() {
        throw new RuntimeException(Hotel.roomNumberDoesNotExistErrorDescription());
    }
}
