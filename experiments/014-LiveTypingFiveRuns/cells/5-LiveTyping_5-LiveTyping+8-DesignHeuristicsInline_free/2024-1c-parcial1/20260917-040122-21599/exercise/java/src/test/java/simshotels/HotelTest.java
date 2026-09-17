package simshotels;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

class HotelTest {

    // testing

    @Test
    void test01CannotCreateHotelWithoutFloors() {
        RuntimeException error = assertThrows(RuntimeException.class,
            () -> new Hotel().setFloors(new ArrayList<Floor>()));
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

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());
        assertEquals(0, hotel.totalRoomsReserved());
        assertEquals(0, hotel.totalRoomsOccupied());
    }

    @Test
    void test07HotelProfitsAreTheSumOfEachFloorProfits() {
        Hotel hotel;
        Floor floor1;
        Floor floor2;
        ArrayList<Floor> floors;

        floor1 = createFloorWithAnd(10, defaultPriceList());
        floor2 = createFloorWithAnd(10, defaultPriceList());

        floors = new ArrayList<>();
        floors.add(floor1);
        floors.add(floor2);
        hotel = new Hotel().setFloors(floors);

        hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 1);
        hotel.receiveAtFloorAtRoom(guestTypeConference(), 2, 1);

        assertEquals(floor1.totalProfits() + floor2.totalProfits(), hotel.totalProfits());
    }

    @Test
    void test08HotelLossesAreTheSumOfEachFloorLosses() {
        Hotel hotel;
        Floor floor1;
        Floor floor2;
        ArrayList<Floor> floors;

        floor1 = createFloorWithAnd(10, defaultPriceList());
        floor2 = createFloorWithAnd(10, defaultPriceList());

        floors = new ArrayList<>();
        floors.add(floor1);
        floors.add(floor2);
        hotel = new Hotel().setFloors(floors);

        hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 1);
        hotel.receiveAtFloorAtRoom(guestTypeConference(), 2, 1);

        hotel.reserveRoomAtFloor(4, 1);
        hotel.reserveRoomAtFloor(2, 2);

        assertEquals(floor1.totalLosses() + floor2.totalLosses(), hotel.totalLosses());
    }

    @Test
    void test09HotelCannotReserveANonexistentRoom() {
        Hotel hotel;
        Floor floor1;
        ArrayList<Floor> floors;

        floor1 = createFloorWithAnd(10, defaultPriceList());

        floors = new ArrayList<>();
        floors.add(floor1);
        hotel = new Hotel().setFloors(floors);

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.reserveRoomAtFloor(42, 1));

        assertEquals(Hotel.roomNumberDoesNotExistErrorDescription(), error.getMessage());

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());
        assertEquals(0, hotel.totalRoomsReserved());
        assertEquals(0, hotel.totalRoomsOccupied());
    }

    @Test
    void test10HotelCannotReserveANonexistentFloor() {
        Hotel hotel;
        Floor floor1;
        ArrayList<Floor> floors;

        floor1 = createFloorWithAnd(10, defaultPriceList());

        floors = new ArrayList<>();
        floors.add(floor1);
        hotel = new Hotel().setFloors(floors);

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.reserveRoomAtFloor(1, 42));

        assertEquals(Hotel.floorNumberDoesNotExistErrorDescription(), error.getMessage());

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());
        assertEquals(0, hotel.totalRoomsReserved());
        assertEquals(0, hotel.totalRoomsOccupied());
    }

    @Test
    void test11HotelCannotReceiveAtNonexistentRoom() {
        Hotel hotel;
        Floor floor1;
        ArrayList<Floor> floors;

        floor1 = createFloorWithAnd(10, defaultPriceList());

        floors = new ArrayList<>();
        floors.add(floor1);
        hotel = new Hotel().setFloors(floors);

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.receiveAtFloorAtRoom(guestTypeVacation(), 1, 42));

        assertEquals(Hotel.roomNumberDoesNotExistErrorDescription(), error.getMessage());

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());
        assertEquals(0, hotel.totalRoomsReserved());
        assertEquals(0, hotel.totalRoomsOccupied());
    }

    @Test
    void test12HotelCannotReceiveAtNonexistentFloor() {
        Hotel hotel;
        Floor floor1;
        ArrayList<Floor> floors;

        floor1 = createFloorWithAnd(10, defaultPriceList());

        floors = new ArrayList<>();
        floors.add(floor1);
        hotel = new Hotel().setFloors(floors);

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.receiveAtFloorAtRoom(guestTypeVacation(), 42, 1));

        assertEquals(Hotel.floorNumberDoesNotExistErrorDescription(), error.getMessage());

        assertEquals(hotel.totalRooms(), hotel.totalRoomsAvailable());
        assertEquals(0, hotel.totalRoomsReserved());
        assertEquals(0, hotel.totalRoomsOccupied());
    }

    @Test
    void test13HotelCannotReceiveWithReservationAtNonexistentRoom() {
        Hotel hotel;
        Floor floor1;
        ArrayList<Floor> floors;

        floor1 = createFloorWithAnd(10, defaultPriceList());

        floors = new ArrayList<>();
        floors.add(floor1);
        hotel = new Hotel().setFloors(floors);

        hotel.reserveRoomAtFloor(1, 1);

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> hotel.receiveWithReservationAtFloorAtRoom(guestTypeVacation(), 1, 42));

        assertEquals(Hotel.roomNumberDoesNotExistErrorDescription(), error.getMessage());

        assertEquals(hotel.totalRooms() - 1, hotel.totalRoomsAvailable());
        assertEquals(1, hotel.totalRoomsReserved());
        assertEquals(1, hotel.totalRoomsOccupied());
    }

    // create

    private Floor createFloorWithAnd(Number aNumberOfRooms, HashMap<String, Integer> aPrice) {
        Floor floor;

        floor = new Floor();
        floor.setNumberOfRooms(aNumberOfRooms);
        floor.setPrices(aPrice);

        return floor;
    }

    private Hotel createHotel() {
        ArrayList<Floor> floors = new ArrayList<>();
        floors.add(createFloorWithAnd(10, defaultPriceList()));
        floors.add(createFloorWithAnd(1, defaultPriceList()));
        return new Hotel().setFloors(floors);
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
