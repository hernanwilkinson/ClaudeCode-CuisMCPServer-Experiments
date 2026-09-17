package simshotels;

import java.util.HashMap;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

class FloorTest {

    // testing

    @Test
    void test01CannotCreateFloorWithoutRooms() {
        RuntimeException error = assertThrows(RuntimeException.class,
            () -> createFloorWithAnd(0, defaultPriceList()));
        assertEquals(Floor.numberOfRoomsMustBePositiveErrorDescription(), error.getMessage());
    }

    @Test
    void test02CannotCreateFloorWithNoIntergerNumberOfRooms() {
        RuntimeException error = assertThrows(RuntimeException.class,
            () -> createFloorWithAnd(1.5, defaultPriceList()));
        assertEquals(Floor.numberOfRoomsMustBeIntegerErrorDescription(), error.getMessage());
    }

    @Test
    void test03CannotCreateFloorWithoutPrices() {
        RuntimeException error = assertThrows(RuntimeException.class,
            () -> createFloorWithAnd(10, new HashMap<String, Integer>()));
        assertEquals(Floor.pricesListCannotBeEmptyErrorDescription(), error.getMessage());
    }

    @Test
    void test04WhenAFloorIsCreatedAllTheRoomsAreAvailable() {
        Floor floor;

        floor = createFloorWithAnd(10, defaultPriceList());

        assertTrue(floor.isAvailable());
        assertEquals(0, floor.totalRoomsOccupied());
        assertEquals(0, floor.totalRoomsReserved());
    }

    @Test
    void test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne() {
        Floor floor;
        int roomsNumber;

        roomsNumber = 10;
        floor = createFloorWithAnd(roomsNumber, defaultPriceList());

        receiveAtRoom(floor, guestTypeVacation(), 1);

        assertEquals(roomsNumber - 1, floor.totalRoomsAvailable());
        assertEquals(1, floor.totalRoomsOccupied());
        assertEquals(0, floor.totalRoomsReserved());
    }

    @Test
    void test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne() {
        Floor floor;
        int roomsNumber;
        int roomsAvailable;
        int roomsOccupied;
        int roomsReserved;

        roomsNumber = 10;
        floor = createFloorWithAnd(roomsNumber, defaultPriceList());

        reserveRoom(floor, 1);

        roomsAvailable = floor.totalRoomsAvailable();
        roomsOccupied = floor.totalRoomsOccupied();
        roomsReserved = floor.totalRoomsReserved();

        receiveWithReservationAtRoom(floor, guestTypeVacation(), 1);

        assertEquals(roomsAvailable, floor.totalRoomsAvailable());
        assertEquals(roomsOccupied, floor.totalRoomsOccupied());
        assertEquals(roomsReserved - 1, floor.totalRoomsReserved());
    }

    @Test
    void test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne() {
        Floor floor;
        int roomsNumber;

        roomsNumber = 10;
        floor = createFloorWithAnd(roomsNumber, defaultPriceList());

        reserveRoom(floor, 1);

        assertEquals(roomsNumber - 1, floor.totalRoomsAvailable());
        assertEquals(1, floor.totalRoomsOccupied());
        assertEquals(1, floor.totalRoomsReserved());
    }

    @Test
    void test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits() {
        Floor floor;
        int roomsNumber;

        roomsNumber = 10;
        floor = createFloorWithAnd(roomsNumber, defaultPriceList());

        receiveAtRoom(floor, guestTypeVacation(), 1);
        receiveAtRoom(floor, guestTypeConference(), 2);
        reserveRoom(floor, 3);

        assertEquals(100 + 200 + 50, floor.totalProfits());
    }

    @Test
    void test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses() {
        Floor floor;
        int roomsNumber;

        roomsNumber = 10;
        floor = createFloorWithAnd(roomsNumber, defaultPriceList());

        receiveAtRoom(floor, guestTypeVacation(), 1);
        receiveAtRoom(floor, guestTypeConference(), 2);
        reserveRoom(floor, 3);

        assertEquals(200 * 7, floor.totalLosses());
    }

    // create

    private Floor createFloorWithAnd(Number aNumberOfRooms, HashMap<String, Integer> aPrice) {
        return Floor.withRoomsAndPrices(aNumberOfRooms, aPrice);
    }

    private void receiveAtRoom(Floor aFloor, String aGuestType, int aRoomNumber) {
        aFloor.withRoomNumberDoIfNone(aRoomNumber, room -> room.receive(aGuestType), () -> fail());
    }

    private void receiveWithReservationAtRoom(Floor aFloor, String aGuestType, int aRoomNumber) {
        aFloor.withRoomNumberDoIfNone(aRoomNumber, room -> room.receiveWithReservation(aGuestType), () -> fail());
    }

    private void reserveRoom(Floor aFloor, int aRoomNumber) {
        aFloor.withRoomNumberDoIfNone(aRoomNumber, Room::reserve, () -> fail());
    }

    private HashMap<String, Integer> defaultPriceList() {
        HashMap<String, Integer> priceList = new HashMap<>();
        priceList.put(guestTypeVacation(), 100);
        priceList.put(guestTypeConference(), 200);
        return priceList;
    }

    private String guestTypeConference() {
        return "conferenceGuest";
    }

    private String guestTypeVacation() {
        return "vacationGuest";
    }
}
