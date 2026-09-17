package simshotels;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.ToIntFunction;

public class Hotel {

    private final ArrayList<Floor> floors;

    // instance creation (class side)

    public static Hotel withFloors(List<Floor> aFloorsCollection) {
        Hotel.assertHaveFloors(aFloorsCollection);

        return new Hotel(aFloorsCollection);
    }

    // initialization

    private Hotel(List<Floor> aFloorsCollection) {
        floors = new ArrayList<>(aFloorsCollection);
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

    private int sumOverFloors(ToIntFunction<Floor> aFloorValueBlock) {
        return floors.stream().mapToInt(aFloorValueBlock).sum();
    }

    // testing

    public boolean isEmpty() {
        return floors.stream().allMatch(Floor::isAvailable);
    }

    // guests

    public void receiveAtFloorAtRoom(String aGuestType, int aFloorNumber, int aRoomNumber) {
        withFloorNumberedDo(aFloorNumber, floor -> floor.receiveAtRoom(aGuestType, aRoomNumber));
    }

    public void receiveWithReservationAtFloorAtRoom(String aGuestType, int aFloorNumber, int aRoomNumber) {
        withFloorNumberedDo(aFloorNumber, floor -> floor.receiveWithReservationAtRoom(aGuestType, aRoomNumber));
    }

    public void reserveRoomAtFloor(int aRoomNumber, int aFloorNumber) {
        withFloorNumberedDo(aFloorNumber, floor -> floor.reserveRoom(aRoomNumber));
    }

    private void withFloorNumberedDo(int aFloorNumber, Consumer<Floor> aFloorBlock) {
        if (aFloorNumber < 1 || aFloorNumber > floors.size()) {
            Hotel.signalFloorNumberDoesNotExist();
        }
        aFloorBlock.accept(floors.get(aFloorNumber - 1));
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

    // exceptions (class side)

    public static void signalFloorNumberDoesNotExist() {
        throw new RuntimeException(Hotel.floorNumberDoesNotExistErrorDescription());
    }

    public static void signalNoFloors() {
        throw new RuntimeException(Hotel.noFloorsErrorDescription());
    }
}
