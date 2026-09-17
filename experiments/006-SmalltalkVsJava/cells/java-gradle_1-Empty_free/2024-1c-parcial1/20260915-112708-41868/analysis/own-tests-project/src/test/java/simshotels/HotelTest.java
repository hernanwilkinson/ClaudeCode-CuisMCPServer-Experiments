package simshotels;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

class HotelTest {

    // testing

    @Test
    void test01CannotCreateHotelWithoutFloors() {
        RuntimeException error = assertThrows(RuntimeException.class,
            () -> Hotel.with(new ArrayList<Floor>()));
        assertEquals(Hotel.noFloorsErrorDescription(), error.getMessage());
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

        assertEquals(hotel.totalRooms() - 1, hotel.totalRoomsAvailable());
        assertEquals(0, hotel.totalRoomsReserved());
        assertEquals(1, hotel.totalRoomsOccupied());
    }

    @Test
    void test04HotelCanTakeAReservationForARoomAtFloor() {
        Hotel hotel;

        hotel = createHotel();

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());

        hotel.reserveRoomAtFloor(2, 1);

        assertEquals(hotel.totalRooms() - 1, hotel.totalRoomsAvailable());
        assertEquals(1, hotel.totalRoomsReserved());
        assertEquals(1, hotel.totalRoomsOccupied());
    }

    @Test
    void test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor() {
        Hotel hotel;

        hotel = createHotel();

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());

        hotel.reserveRoomAtFloor(2, 1);
        hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 2);

        assertEquals(hotel.totalRooms() - 1, hotel.totalRoomsAvailable());
        assertEquals(0, hotel.totalRoomsReserved());
        assertEquals(1, hotel.totalRoomsOccupied());
    }

    @Test
    void test06HotelCannotReceiveWithReservationWithoutPreviousReservation() {
        Hotel hotel;

        hotel = createHotel();

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 2));

        assertEquals(Room.roomIsNotReservedErrorDescription(), error.getMessage());

        assertNoRoomIsUsed(hotel);
    }

    @Test
    void test07HotelProfitsAreTheSumOfEachFloorProfits() {
        Hotel hotel;
        Floor floor1;
        Floor floor2;

        floor1 = createDefaultFloor();
        floor2 = createDefaultFloor();
        hotel = createHotelWith(floor1, floor2);

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
        hotel = createHotelWith(floor1, floor2);

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

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.reserveRoomAtFloor(42, 1));

        assertEquals(Hotel.roomNumberDoesNotExistErrorDescription(), error.getMessage());

        assertNoRoomIsUsed(hotel);
    }

    @Test
    void test10HotelCannotReserveANonexistentFloor() {
        Hotel hotel;

        hotel = createHotelWithOneFloor();

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.reserveRoomAtFloor(1, 42));

        assertEquals(Hotel.floorNumberDoesNotExistErrorDescription(), error.getMessage());

        assertNoRoomIsUsed(hotel);
    }

    @Test
    void test11HotelCannotReceiveAtNonexistentRoom() {
        Hotel hotel;

        hotel = createHotelWithOneFloor();

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 42));

        assertEquals(Hotel.roomNumberDoesNotExistErrorDescription(), error.getMessage());

        assertNoRoomIsUsed(hotel);
    }

    @Test
    void test12HotelCannotReceiveAtNonexistentFloor() {
        Hotel hotel;

        hotel = createHotelWithOneFloor();

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.receiveAtFloorAtRoom(guestTypeVacation(), 42, 1));

        assertEquals(Hotel.floorNumberDoesNotExistErrorDescription(), error.getMessage());

        assertNoRoomIsUsed(hotel);
    }

    @Test
    void test13HotelCannotReceiveWithReservationAtNonexistentRoom() {
        Hotel hotel;

        hotel = createHotelWithOneFloor();

        hotel.reserveRoomAtFloor(1, 1);

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 42));

        assertEquals(Hotel.roomNumberDoesNotExistErrorDescription(), error.getMessage());

        assertEquals(hotel.totalRooms() - 1, hotel.totalRoomsAvailable());
        assertEquals(1, hotel.totalRoomsReserved());
        assertEquals(1, hotel.totalRoomsOccupied());
    }

    // assertions

    private void assertNoRoomIsUsed(Hotel hotel) {
        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());
        assertEquals(0, hotel.totalRoomsReserved());
        assertEquals(0, hotel.totalRoomsOccupied());
    }

    // create

    private Floor createDefaultFloor() {
        return createFloorWithAnd(10, defaultPriceList());
    }

    private Floor createFloorWithAnd(Number aNumberOfRooms, Map<String, Integer> aPrice) {
        return Floor.with(aNumberOfRooms, aPrice);
    }

    private Hotel createHotel() {
        return createHotelWith(createDefaultFloor(), createFloorWithAnd(1, defaultPriceList()));
    }

    private Hotel createHotelWith(Floor... someFloors) {
        List<Floor> floors = new ArrayList<>(Arrays.asList(someFloors));
        return Hotel.with(floors);
    }

    private Hotel createHotelWithOneFloor() {
        return createHotelWith(createDefaultFloor());
    }

    private Map<String, Integer> defaultPriceList() {
        Map<String, Integer> priceList = new HashMap<>();
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
