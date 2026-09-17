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
        assertFailsCreatingFloorWith(0, defaultPriceList(), Floor.numberOfRoomsMustBePositiveErrorDescription());
    }

    @Test
    void test02CannotCreateFloorWithNoIntergerNumberOfRooms() {
        assertFailsCreatingFloorWith(1.5, defaultPriceList(), Floor.numberOfRoomsMustBeIntegerErrorDescription());
    }

    @Test
    void test03CannotCreateFloorWithoutPrices() {
        assertFailsCreatingFloorWith(10, new HashMap<String, Integer>(), Floor.pricesListCannotBeEmptyErrorDescription());
    }

    @Test
    void test04WhenAFloorIsCreatedAllTheRoomsAreAvailable() {
        Floor floor;

        floor = createFloorWithAnd(10, defaultPriceList());

        assertTrue(floor.isAvailable());
        assertRoomsAvailableOccupiedReserved(floor, 10, 0, 0);
    }

    @Test
    void test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne() {
        Floor floor;

        floor = createFloorWithAnd(defaultNumberOfRooms(), defaultPriceList());

        floor.receiveAtRoom(guestTypeVacation(), 1);

        assertRoomsAvailableOccupiedReserved(floor, defaultNumberOfRooms() - 1, 1, 0);
    }

    @Test
    void test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne() {
        Floor floor;
        int roomsAvailable;
        int roomsOccupied;
        int roomsReserved;

        floor = createFloorWithAnd(defaultNumberOfRooms(), defaultPriceList());

        floor.reserveRoom(1);

        roomsAvailable = floor.totalRoomsAvailable();
        roomsOccupied = floor.totalRoomsOccupied();
        roomsReserved = floor.totalRoomsReserved();

        floor.receiveWithReservationAtRoom(guestTypeVacation(), 1);

        assertRoomsAvailableOccupiedReserved(floor, roomsAvailable, roomsOccupied, roomsReserved - 1);
    }

    @Test
    void test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne() {
        Floor floor;

        floor = createFloorWithAnd(defaultNumberOfRooms(), defaultPriceList());

        floor.reserveRoom(1);

        assertRoomsAvailableOccupiedReserved(floor, defaultNumberOfRooms() - 1, 1, 1);
    }

    @Test
    void test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits() {
        Floor floor;

        floor = createFloorWithTwoGuestsAndOneReservation();

        assertEquals(100 + 200 + 50, floor.totalProfits());
    }

    @Test
    void test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses() {
        Floor floor;

        floor = createFloorWithTwoGuestsAndOneReservation();

        assertEquals(200 * 7, floor.totalLosses());
    }

    @Test
    void test10CannotReceiveAtNonexistentRoom() {
        Floor floor;

        floor = createFloorWithAnd(defaultNumberOfRooms(), defaultPriceList());

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> floor.receiveAtRoom(guestTypeVacation(), defaultNumberOfRooms() + 1));

        assertEquals(Floor.roomNumberDoesNotExistErrorDescription(), error.getMessage());
        assertTrue(floor.isAvailable());
    }

    @Test
    void test11CannotReserveNonexistentRoom() {
        Floor floor;

        floor = createFloorWithAnd(defaultNumberOfRooms(), defaultPriceList());

        RuntimeException error = assertThrows(RuntimeException.class, () -> floor.reserveRoom(0));

        assertEquals(Floor.roomNumberDoesNotExistErrorDescription(), error.getMessage());
        assertTrue(floor.isAvailable());
    }

    @Test
    void test12CannotCreateFloorWithNonPositivePrices() {
        HashMap<String, Integer> priceList;

        priceList = defaultPriceList();
        priceList.put(guestTypeVacation(), 0);

        assertFailsCreatingFloorWith(10, priceList, Floor.priceMustBePositiveErrorDescription());
    }

    @Test
    void test13ModifyingThePriceListAfterCreationDoesNotAffectTheFloor() {
        Floor floor;
        HashMap<String, Integer> priceList;

        priceList = defaultPriceList();
        floor = createFloorWithAnd(1, priceList);
        floor.receiveAtRoom(guestTypeVacation(), 1);

        priceList.put(guestTypeVacation(), 1000);

        assertEquals(100, floor.totalProfits());
    }

    // assertions

    private void assertFailsCreatingFloorWith(Number aNumberOfRooms, HashMap<String, Integer> aPriceList, String anErrorDescription) {
        RuntimeException error = assertThrows(RuntimeException.class,
            () -> createFloorWithAnd(aNumberOfRooms, aPriceList));
        assertEquals(anErrorDescription, error.getMessage());
    }

    private void assertRoomsAvailableOccupiedReserved(Floor aFloor, int roomsAvailable, int roomsOccupied, int roomsReserved) {
        assertEquals(roomsAvailable, aFloor.totalRoomsAvailable());
        assertEquals(roomsOccupied, aFloor.totalRoomsOccupied());
        assertEquals(roomsReserved, aFloor.totalRoomsReserved());
    }

    // create

    private Floor createFloorWithAnd(Number aNumberOfRooms, HashMap<String, Integer> aPrice) {
        return new Floor(aNumberOfRooms, aPrice);
    }

    private Floor createFloorWithTwoGuestsAndOneReservation() {
        Floor floor;

        floor = createFloorWithAnd(defaultNumberOfRooms(), defaultPriceList());

        floor.receiveAtRoom(guestTypeVacation(), 1);
        floor.receiveAtRoom(guestTypeConference(), 2);
        floor.reserveRoom(3);

        return floor;
    }

    private int defaultNumberOfRooms() {
        return 10;
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
