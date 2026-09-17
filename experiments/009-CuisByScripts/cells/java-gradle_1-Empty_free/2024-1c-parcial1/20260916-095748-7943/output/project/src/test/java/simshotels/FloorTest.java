package simshotels;

import java.util.HashMap;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

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

        floor.receiveAtRoom(guestTypeVacation(), 1);

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

        floor.reserveRoom(1);

        roomsAvailable = floor.totalRoomsAvailable();
        roomsOccupied = floor.totalRoomsOccupied();
        roomsReserved = floor.totalRoomsReserved();

        floor.receiveWithReservationAtRoom(guestTypeVacation(), 1);

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

        floor.reserveRoom(1);

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

        floor.receiveAtRoom(guestTypeVacation(), 1);
        floor.receiveAtRoom(guestTypeConference(), 2);
        floor.reserveRoom(3);

        assertEquals(100 + 200 + 50, floor.totalProfits());
    }

    @Test
    void test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses() {
        Floor floor;
        int roomsNumber;

        roomsNumber = 10;
        floor = createFloorWithAnd(roomsNumber, defaultPriceList());

        floor.receiveAtRoom(guestTypeVacation(), 1);
        floor.receiveAtRoom(guestTypeConference(), 2);
        floor.reserveRoom(3);

        assertEquals(200 * 7, floor.totalLosses());
    }

    // create

    private Floor createFloorWithAnd(Number aNumberOfRooms, HashMap<String, Integer> aPrice) {
        return Floor.withNumberOfRoomsAndPrices(aNumberOfRooms, aPrice);
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
