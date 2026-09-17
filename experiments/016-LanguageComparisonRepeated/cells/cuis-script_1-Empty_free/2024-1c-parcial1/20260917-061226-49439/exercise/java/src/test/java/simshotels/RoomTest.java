package simshotels;

import java.util.HashMap;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.function.Executable;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

class RoomTest {

    // testing

    @Test
    void test01NewRoomsAreAvailable() {
        Room room;

        room = new Room();

        assertTrue(room.isAvailable());

        assertFalse(room.isOccupied());
        assertFalse(room.isReserved());
    }

    @Test
    void test02ReceivingAGuestMakesTheRoomOccupied() {
        Room room;

        room = new Room();

        room.receive(guestTypeVacation());

        assertTrue(room.isOccupied());

        assertFalse(room.isAvailable());
        assertFalse(room.isReserved());
    }

    @Test
    void test03ReservingARoomMakesTheRoomReservedAndOccupied() {
        Room room;

        room = new Room();

        room.reserve();

        assertTrue(room.isReserved());
        assertTrue(room.isOccupied());

        assertFalse(room.isAvailable());
    }

    @Test
    void test04CannotReceiveAGuestInAOccupiedRoom() {
        Room room;

        room = new Room();

        room.receive(guestTypeVacation());

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> room.receive(guestTypeVacation()));

        assertEquals(Room.roomIsNotEmptyErrorDescription(), error.getMessage());

        assertTrue(room.isOccupied());

        assertFalse(room.isAvailable());
        assertFalse(room.isReserved());
    }

    @Test
    void test05CannotReceiveAGuestInAReservedRoom() {
        Room room;

        room = new Room();

        room.reserve();

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> room.receive(guestTypeVacation()));

        assertEquals(Room.roomIsNotEmptyErrorDescription(), error.getMessage());

        assertTrue(room.isReserved());
        assertTrue(room.isOccupied());

        assertFalse(room.isAvailable());
    }

    @Test
    void test06ReceivingOnReservationMakesTheRoomOccupied() {
        Room room;

        room = new Room();

        room.reserve();

        room.receiveWithReservation(guestTypeVacation());

        assertTrue(room.isOccupied());

        assertFalse(room.isReserved());
        assertFalse(room.isAvailable());
    }

    @Test
    void test07CannotReceiveOnReservationAnAvailableRoom() {
        Room room;

        room = new Room();

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> room.receiveWithReservation(guestTypeVacation()));

        assertEquals(Room.roomIsNotReservedErrorDescription(), error.getMessage());

        assertTrue(room.isAvailable());

        assertFalse(room.isReserved());
        assertFalse(room.isOccupied());
    }

    @Test
    void test08CannotReceiveOnReservationAnOccupiedRoom() {
        Room room;

        room = new Room();

        room.receive(guestTypeVacation());

        RuntimeException error = assertThrows(RuntimeException.class,
            () -> room.receiveWithReservation(guestTypeVacation()));

        assertEquals(Room.roomIsNotReservedErrorDescription(), error.getMessage());

        assertTrue(room.isOccupied());

        assertFalse(room.isReserved());
        assertFalse(room.isAvailable());
    }

    @Test
    void test09ProfitOfAvailableRoomIsCeroPesos() {
        Room room;

        room = new Room();

        assertEquals(0, room.profitUsingIfAbsentGuestType(defaultPriceList(), () -> fail()));
    }

    @Test
    void test10ProfitOfReservedRoomIsHalfTheMinPriceInList() {
        Room room;

        room = new Room();

        room.reserve();

        assertEquals(minPriceInList() / 2, room.profitUsingIfAbsentGuestType(defaultPriceList(), () -> fail()));
    }

    @Test
    void test11ProfitOfOccupiedRoomDependsOnGuestType() {
        Room roomWithConferenceGuest;
        Room roomWithVacationGuest;

        roomWithConferenceGuest = new Room();
        roomWithConferenceGuest.receive(guestTypeConference());

        roomWithVacationGuest = new Room();
        roomWithVacationGuest.receive(guestTypeVacation());

        assertEquals(defaultPriceList().get(guestTypeConference()),
            roomWithConferenceGuest.profitUsingIfAbsentGuestType(defaultPriceList(), () -> fail()));

        assertEquals(defaultPriceList().get(guestTypeVacation()),
            roomWithVacationGuest.profitUsingIfAbsentGuestType(defaultPriceList(), () -> fail()));
    }

    @Test
    void test12NoProfitOnOccupiedRoomByUnknownGuestType() {
        Room room;

        room = new Room();
        room.receive("unknownGuest");

        try {
            room.profitUsingIfAbsentGuestType(defaultPriceList(), () -> { throw new UnknownGuestTypeDetected(); });
        } catch (UnknownGuestTypeDetected anEscape) {
            return;
        }

        // we should not get here
        fail("should not calculate profit on room occupied by unknown guest type");
    }

    @Test
    void test13LossesOfAvailableRoomIsTheMaxPriceInList() {
        shouldFail(() -> {
            Room room;

            room = new Room();

            assertEquals(maxPriceInList(), room.lossUsingIfAbsentGuestType(defaultPriceList(), () -> fail()));
        });
    }

    @Test
    void test14LossesOfReservedRoomIsCeroPesos() {
        shouldFail(() -> {
            Room room;

            room = new Room();

            room.reserve();

            assertEquals(0, room.lossUsingIfAbsentGuestType(defaultPriceList(), () -> fail()));
        });
    }

    @Test
    void test15LossesOfOccupiedRoomIsCeroPesos() {
        shouldFail(() -> {
            Room room;

            room = new Room();

            room.receive(guestTypeVacation());

            assertEquals(0, room.lossUsingIfAbsentGuestType(defaultPriceList(), () -> fail()));
        });
    }

    @Test
    void test16CannotReserveWhenReserved() {
        Room room;

        room = new Room();

        room.reserve();

        RuntimeException anError = assertThrows(RuntimeException.class, () -> room.reserve());

        assertEquals(Room.roomIsNotEmptyErrorDescription(), anError.getMessage());
        assertTrue(room.isReserved());
    }

    @Test
    void test17CannotReserveWhenOccupied() {
        Room room;

        room = new Room();

        room.receive(guestTypeVacation());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> room.reserve());

        assertEquals(Room.roomIsNotEmptyErrorDescription(), anError.getMessage());
        assertTrue(room.isOccupied());
    }

    // create

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

    // support (Cuis TestCase>>shouldFail: is `self should: aBlock raise: Exception`)

    private void shouldFail(Executable aBlock) {
        assertThrows(Throwable.class, aBlock);
    }

    // the Java stand-in for the non-local return `[ ^self ]` of test12
    private static class UnknownGuestTypeDetected extends RuntimeException {
    }
}
