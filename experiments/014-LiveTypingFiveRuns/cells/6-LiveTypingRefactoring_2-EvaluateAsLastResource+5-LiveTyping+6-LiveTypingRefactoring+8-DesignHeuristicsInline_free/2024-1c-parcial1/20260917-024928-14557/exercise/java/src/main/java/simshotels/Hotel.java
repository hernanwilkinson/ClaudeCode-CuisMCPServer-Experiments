package simshotels;

import java.util.ArrayList;

public class Hotel {

    private ArrayList<Floor> floors;
    private int availableRoomsCount;

    // initialization

    public Hotel() {
        availableRoomsCount = 0;
    }

    // accounting

    public int totalLosses() {
        int acc;

        acc = 0;
        for (Floor floor : floors) {
            acc = acc + floor.totalLosses();
        }

        return acc;
    }

    public int totalProfits() {
        int acc;

        acc = 0;
        for (Floor floor : floors) {
            acc = acc + floor.totalProfits();
        }

        return acc;
    }

    // setters

    public Hotel setFloors(ArrayList<Floor> aFloorsCollection) {
        Hotel.assertHaveFloors(aFloorsCollection);

        floors = aFloorsCollection;

        availableRoomsCount = totalRooms();

        return this;
    }

    // totals

    public int totalRooms() {
        int ix;
        int acc;

        acc = 0;

        ix = 1;
        while (ix <= floors.size()) {
            Floor floor;
            int jx;
            floor = floors.get(ix - 1);

            jx = 1;
            while (jx <= floor.rooms().size()) {
                acc = acc + 1;

                jx = jx + 1;
            }

            ix = ix + 1;
        }

        return acc;
    }

    public int totalRoomsAvailable() {
        return availableRoomsCount;
    }

    public int totalRoomsOccupied() {
        int ix;
        int acc;

        acc = 0;

        ix = 1;
        while (ix <= floors.size()) {
            Floor floor;
            int jx;
            floor = floors.get(ix - 1);

            jx = 1;
            while (jx <= floor.rooms().size()) {
                Room room;
                room = floor.rooms().get(jx - 1);
                if (room.isOccupied()) {
                    acc = acc + 1;
                }

                jx = jx + 1;
            }

            ix = ix + 1;
        }

        return acc;
    }

    public int totalRoomsReserved() {
        int ix;
        int acc;

        acc = 0;

        ix = 1;
        while (ix <= floors.size()) {
            Floor floor;
            int jx;
            floor = floors.get(ix - 1);

            jx = 1;
            while (jx <= floor.rooms().size()) {
                Room room;
                room = floor.rooms().get(jx - 1);
                if (room.isReserved()) {
                    acc = acc + 1;
                }

                jx = jx + 1;
            }

            ix = ix + 1;
        }

        return acc;
    }

    // testing

    public boolean isEmpty() {
        int ix;
        boolean acc;

        acc = true;

        ix = 1;
        while (ix <= floors.size()) {
            Floor floor;
            int jx;
            floor = floors.get(ix - 1);

            jx = 1;
            while (jx <= floor.rooms().size()) {
                Room room;
                room = floor.rooms().get(jx - 1);
                acc = acc && room.isAvailable();

                jx = jx + 1;
            }

            ix = ix + 1;
        }

        return acc;
    }

    // guests

    public void receiveAtFloorAtRoom(String aGuestType, int aFloorNumber, int aRoomNumber) {
        Floor floor;
        Room room;

        if (aFloorNumber < 1 || aFloorNumber > floors.size()) {
            Hotel.signalFloorNumberDoesNotExist();
        }
        floor = floors.get(aFloorNumber - 1);
        if (aRoomNumber < 1 || aRoomNumber > floor.rooms().size()) {
            Hotel.signalRoomNumberDoesNotExist();
        }
        room = floor.rooms().get(aRoomNumber - 1);

        room.receive(aGuestType);

        availableRoomsCount = availableRoomsCount - 1;
    }

    public void receiveWithReservationAtFloorAtRoom(String aGuestType, int aFloorNumber, int aRoomNumber) {
        Floor floor;
        Room room;

        if (aFloorNumber < 1 || aFloorNumber > floors.size()) {
            Hotel.signalFloorNumberDoesNotExist();
        }
        floor = floors.get(aFloorNumber - 1);
        if (aRoomNumber < 1 || aRoomNumber > floor.rooms().size()) {
            Hotel.signalRoomNumberDoesNotExist();
        }
        room = floor.rooms().get(aRoomNumber - 1);

        room.receiveWithReservation(aGuestType);
    }

    public void reserveRoomAtFloor(int aRoomNumber, int aFloorNumber) {
        Floor floor;
        Room room;

        if (aFloorNumber < 1 || aFloorNumber > floors.size()) {
            Hotel.signalFloorNumberDoesNotExist();
        }
        floor = floors.get(aFloorNumber - 1);
        if (aRoomNumber < 1 || aRoomNumber > floor.rooms().size()) {
            Hotel.signalRoomNumberDoesNotExist();
        }
        room = floor.rooms().get(aRoomNumber - 1);

        room.reserve();

        availableRoomsCount = availableRoomsCount - 1;
    }

    // assertions (class side)

    public static void assertHaveFloors(ArrayList<Floor> aFloorsCollection) {
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

    public static String roomNumberDoesNotExistErrorDescription() {
        return "Room number does not exist";
    }

    // exceptions (class side)

    public static void signalFloorNumberDoesNotExist() {
        throw new RuntimeException(Hotel.floorNumberDoesNotExistErrorDescription());
    }

    public static void signalNoFloors() {
        throw new RuntimeException(Hotel.noFloorsErrorDescription());
    }

    public static void signalRoomNumberDoesNotExist() {
        throw new RuntimeException(Hotel.roomNumberDoesNotExistErrorDescription());
    }
}
