package simshotels;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.function.Executable;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

class HotelTest {

    // testing

    @Test
    void test01CannotCreateHotelWithoutFloors() {
        assertFailsWithDescription(() -> Hotel.withFloors(new ArrayList<Floor>()), Hotel.noFloorsErrorDescription());
    }

    @Test
    void test02NewHotelsAreEmpty() {
        Hotel hotel;

        hotel = createHotel();

        assertTrue(hotel.isEmpty());
    }

    @Test
    void test03HotelCanReceiveATypeOfGuestInRoomAtFloor() {
        Hotel hotel;

        hotel = createHotel();

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());

        hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 2);

        assertRoomsUnavailableReservedAndOccupied(hotel, 1, 0, 1);
    }

    @Test
    void test04HotelCanTakeAReservationForARoomAtFloor() {
        Hotel hotel;

        hotel = createHotel();

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());

        hotel.reserveRoomAtFloor(2, 1);

        assertRoomsUnavailableReservedAndOccupied(hotel, 1, 1, 1);
    }

    @Test
    void test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor() {
        Hotel hotel;

        hotel = createHotel();

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());

        hotel.reserveRoomAtFloor(2, 1);
        hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 2);

        assertRoomsUnavailableReservedAndOccupied(hotel, 1, 0, 1);
    }

    @Test
    void test06HotelCannotReceiveWithReservationWithoutPreviousReservation() {
        Hotel hotel;

        hotel = createHotel();

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());

        assertFailsWithDescription(() -> hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 2),
            Room.roomIsNotReservedErrorDescription());

        assertRoomsUnavailableReservedAndOccupied(hotel, 0, 0, 0);
    }

    @Test
    void test07HotelProfitsAreTheSumOfEachFloorProfits() {
        Hotel hotel;
        Floor floor1;
        Floor floor2;

        floor1 = createDefaultFloor();
        floor2 = createDefaultFloor();
        hotel = Hotel.withFloors(List.of(floor1, floor2));

        hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 1);
        hotel.receiveAtFloorAtRoom(guestTypeConference(), 2, 1);

        assertEquals(floor1.totalProfits() + floor2.totalProfits(), hotel.totalProfits());
    }

    @Test
    void test08HotelLossesAreTheSumOfEachFloorLosses() {
        Hotel hotel;
        Floor floor1;
        Floor floor2;

        floor1 = createDefaultFloor();
        floor2 = createDefaultFloor();
        hotel = Hotel.withFloors(List.of(floor1, floor2));

        hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 1);
        hotel.receiveAtFloorAtRoom(guestTypeConference(), 2, 1);

        hotel.reserveRoomAtFloor(4, 1);
        hotel.reserveRoomAtFloor(2, 2);

        assertEquals(floor1.totalLosses() + floor2.totalLosses(), hotel.totalLosses());
    }

    @Test
    void test09HotelCannotReserveANonexistentRoom() {
        Hotel hotel;

        hotel = createHotelWithOneFloor();

        assertFailsWithDescription(() -> hotel.reserveRoomAtFloor(42, 1), Floor.roomNumberDoesNotExistErrorDescription());

        assertRoomsUnavailableReservedAndOccupied(hotel, 0, 0, 0);
    }

    @Test
    void test10HotelCannotReserveANonexistentFloor() {
        Hotel hotel;

        hotel = createHotelWithOneFloor();

        assertFailsWithDescription(() -> hotel.reserveRoomAtFloor(1, 42), Hotel.floorNumberDoesNotExistErrorDescription());

        assertRoomsUnavailableReservedAndOccupied(hotel, 0, 0, 0);
    }

    @Test
    void test11HotelCannotReceiveAtNonexistentRoom() {
        Hotel hotel;

        hotel = createHotelWithOneFloor();

        assertFailsWithDescription(() -> hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 42),
            Floor.roomNumberDoesNotExistErrorDescription());

        assertRoomsUnavailableReservedAndOccupied(hotel, 0, 0, 0);
    }

    @Test
    void test12HotelCannotReceiveAtNonexistentFloor() {
        Hotel hotel;

        hotel = createHotelWithOneFloor();

        assertFailsWithDescription(() -> hotel.receiveAtFloorAtRoom(guestTypeVacation(), 42, 1),
            Hotel.floorNumberDoesNotExistErrorDescription());

        assertRoomsUnavailableReservedAndOccupied(hotel, 0, 0, 0);
    }

    @Test
    void test13HotelCannotReceiveWithReservationAtNonexistentRoom() {
        Hotel hotel;

        hotel = createHotelWithOneFloor();

        hotel.reserveRoomAtFloor(1, 1);

        assertFailsWithDescription(() -> hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 42),
            Floor.roomNumberDoesNotExistErrorDescription());

        assertRoomsUnavailableReservedAndOccupied(hotel, 1, 1, 1);
    }

    // assertions

    private void assertFailsWithDescription(Executable aBlock, String anErrorDescription) {
        RuntimeException error = assertThrows(RuntimeException.class, aBlock);
        assertEquals(anErrorDescription, error.getMessage());
    }

    private void assertRoomsUnavailableReservedAndOccupied(Hotel aHotel, int unavailable, int reserved, int occupied) {
        assertEquals(aHotel.totalRooms() - unavailable, aHotel.totalRoomsAvailable());
        assertEquals(reserved, aHotel.totalRoomsReserved());
        assertEquals(occupied, aHotel.totalRoomsOccupied());
    }

    // create

    private Floor createFloorWithAnd(Number aNumberOfRooms, HashMap<String, Integer> aPrice) {
        return Floor.withRoomsAndPrices(aNumberOfRooms, aPrice);
    }

    private Floor createDefaultFloor() {
        return createFloorWithAnd(10, defaultPriceList());
    }

    private Hotel createHotel() {
        return Hotel.withFloors(List.of(createDefaultFloor(), createFloorWithAnd(1, defaultPriceList())));
    }

    private Hotel createHotelWithOneFloor() {
        return Hotel.withFloors(List.of(createDefaultFloor()));
    }

    private HashMap<String, Integer> defaultPriceList() {
        HashMap<String, Integer> priceList = new HashMap<>();
        priceList.put(guestTypeVacation(), minPriceInList());
        priceList.put(guestTypeConference(), maxPriceInList());
        return priceList;
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
