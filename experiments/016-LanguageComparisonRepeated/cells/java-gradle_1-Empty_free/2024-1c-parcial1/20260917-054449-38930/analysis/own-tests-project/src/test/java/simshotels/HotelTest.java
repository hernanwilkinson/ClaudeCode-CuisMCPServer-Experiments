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
        RuntimeException error = assertThrows(RuntimeException.class,
            () -> new Hotel(new ArrayList<Floor>()));
        assertEquals(Hotel.noFloorsErrorDescription(), error.getMessage());
    }

    @Test
    void test02NewHotelsAreEmpty() {
        Hotel hotel;

        hotel = createHotel();

        assertTrue(hotel.isEmpty());
        assertRoomsAvailableReservedOccupied(hotel, hotel.totalRooms(), 0, 0);
    }

    @Test
    void test03HotelCanReceiveATypeOfGuestInRoomAtFloor() {
        Hotel hotel;

        hotel = createHotel();

        hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 2);

        assertRoomsAvailableReservedOccupied(hotel, hotel.totalRooms() - 1, 0, 1);
    }

    @Test
    void test04HotelCanTakeAReservationForARoomAtFloor() {
        Hotel hotel;

        hotel = createHotel();

        hotel.reserveRoomAtFloor(2, 1);

        assertRoomsAvailableReservedOccupied(hotel, hotel.totalRooms() - 1, 1, 1);
    }

    @Test
    void test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor() {
        Hotel hotel;

        hotel = createHotel();

        hotel.reserveRoomAtFloor(2, 1);
        hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 2);

        assertRoomsAvailableReservedOccupied(hotel, hotel.totalRooms() - 1, 0, 1);
    }

    @Test
    void test06HotelCannotReceiveWithReservationWithoutPreviousReservation() {
        Hotel hotel;

        hotel = createHotel();

        assertFailsWithoutChangingRooms(hotel,
            () -> hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 2),
            Room.roomIsNotReservedErrorDescription());
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
        assertEquals(minPriceInList() + maxPriceInList(), hotel.totalProfits());
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
        assertEquals(maxPriceInList() * 16, hotel.totalLosses());
    }

    @Test
    void test09HotelCannotReserveANonexistentRoom() {
        Hotel hotel;

        hotel = createHotelWith(createDefaultFloor());

        assertFailsWithoutChangingRooms(hotel,
            () -> hotel.reserveRoomAtFloor(42, 1),
            Floor.roomNumberDoesNotExistErrorDescription());
    }

    @Test
    void test10HotelCannotReserveANonexistentFloor() {
        Hotel hotel;

        hotel = createHotelWith(createDefaultFloor());

        assertFailsWithoutChangingRooms(hotel,
            () -> hotel.reserveRoomAtFloor(1, 42),
            Hotel.floorNumberDoesNotExistErrorDescription());
    }

    @Test
    void test11HotelCannotReceiveAtNonexistentRoom() {
        Hotel hotel;

        hotel = createHotelWith(createDefaultFloor());

        assertFailsWithoutChangingRooms(hotel,
            () -> hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 42),
            Floor.roomNumberDoesNotExistErrorDescription());
    }

    @Test
    void test12HotelCannotReceiveAtNonexistentFloor() {
        Hotel hotel;

        hotel = createHotelWith(createDefaultFloor());

        assertFailsWithoutChangingRooms(hotel,
            () -> hotel.receiveAtFloorAtRoom(guestTypeVacation(), 42, 1),
            Hotel.floorNumberDoesNotExistErrorDescription());
    }

    @Test
    void test13HotelCannotReceiveWithReservationAtNonexistentRoom() {
        Hotel hotel;

        hotel = createHotelWith(createDefaultFloor());

        hotel.reserveRoomAtFloor(1, 1);

        assertFailsWithoutChangingRooms(hotel,
            () -> hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 42),
            Floor.roomNumberDoesNotExistErrorDescription());
    }

    // assertions

    private void assertFailsWithoutChangingRooms(Hotel aHotel, Executable aFailingBlock, String anErrorDescription) {
        int roomsAvailable;
        int roomsReserved;
        int roomsOccupied;

        roomsAvailable = aHotel.totalRoomsAvailable();
        roomsReserved = aHotel.totalRoomsReserved();
        roomsOccupied = aHotel.totalRoomsOccupied();

        RuntimeException error = assertThrows(RuntimeException.class, aFailingBlock);

        assertEquals(anErrorDescription, error.getMessage());
        assertRoomsAvailableReservedOccupied(aHotel, roomsAvailable, roomsReserved, roomsOccupied);
    }

    private void assertRoomsAvailableReservedOccupied(Hotel aHotel, int roomsAvailable, int roomsReserved, int roomsOccupied) {
        assertEquals(roomsAvailable, aHotel.totalRoomsAvailable());
        assertEquals(roomsReserved, aHotel.totalRoomsReserved());
        assertEquals(roomsOccupied, aHotel.totalRoomsOccupied());
    }

    // create

    private Floor createFloorWithAnd(Number aNumberOfRooms, HashMap<String, Integer> aPrice) {
        return new Floor(aNumberOfRooms, aPrice);
    }

    private Floor createDefaultFloor() {
        return createFloorWithAnd(10, defaultPriceList());
    }

    private Hotel createHotel() {
        return createHotelWith(createDefaultFloor(), createFloorWithAnd(1, defaultPriceList()));
    }

    private Hotel createHotelWith(Floor... floors) {
        return new Hotel(List.of(floors));
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
