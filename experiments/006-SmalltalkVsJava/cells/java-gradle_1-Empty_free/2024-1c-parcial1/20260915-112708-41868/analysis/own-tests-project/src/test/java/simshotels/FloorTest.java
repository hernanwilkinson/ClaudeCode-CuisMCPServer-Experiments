package simshotels;

import java.util.HashMap;
import java.util.Map;

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

        floor = createDefaultFloor();

        assertTrue(floor.isAvailable());
        assertEquals(0, floor.totalRoomsOccupied());
        assertEquals(0, floor.totalRoomsReserved());
    }

    @Test
    void test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne() {
        Floor floor;

        floor = createDefaultFloor();

        floor.receiveAtRoom(guestTypeVacation(), 1);

        assertEquals(defaultNumberOfRooms() - 1, floor.totalRoomsAvailable());
        assertEquals(1, floor.totalRoomsOccupied());
        assertEquals(0, floor.totalRoomsReserved());
    }

    @Test
    void test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne() {
        Floor floor;
        int roomsAvailable;
        int roomsOccupied;
        int roomsReserved;

        floor = createDefaultFloor();

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

        floor = createDefaultFloor();

        floor.reserveRoom(1);

        assertEquals(defaultNumberOfRooms() - 1, floor.totalRoomsAvailable());
        assertEquals(1, floor.totalRoomsOccupied());
        assertEquals(1, floor.totalRoomsReserved());
    }

    @Test
    void test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits() {
        Floor floor;

        floor = createFloorWithTwoGuestsAndOneReservation();

        assertEquals(minPriceInList() + maxPriceInList() + minPriceInList() / 2, floor.totalProfits());
    }

    @Test
    void test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses() {
        Floor floor;

        floor = createFloorWithTwoGuestsAndOneReservation();

        assertEquals(maxPriceInList() * (defaultNumberOfRooms() - 3), floor.totalLosses());
    }

    // create

    private Floor createDefaultFloor() {
        return createFloorWithAnd(defaultNumberOfRooms(), defaultPriceList());
    }

    private Floor createFloorWithAnd(Number aNumberOfRooms, Map<String, Integer> aPrice) {
        return Floor.with(aNumberOfRooms, aPrice);
    }

    private Floor createFloorWithTwoGuestsAndOneReservation() {
        Floor floor;

        floor = createDefaultFloor();

        floor.receiveAtRoom(guestTypeVacation(), 1);
        floor.receiveAtRoom(guestTypeConference(), 2);
        floor.reserveRoom(3);

        return floor;
    }

    private Map<String, Integer> defaultPriceList() {
        Map<String, Integer> priceList = new HashMap<>();
        priceList.put(guestTypeVacation(), minPriceInList());
        priceList.put(guestTypeConference(), maxPriceInList());
        return priceList;
    }

    private int defaultNumberOfRooms() {
        return 10;
    }

    private String guestTypeConference() {
        return "conferenceGuest";
    }

    private String guestTypeVacation() {
        return "vacationGuest";
    }

    private int maxPriceInList() {
        return 200;
    }

    private int minPriceInList() {
        return 100;
    }
}
