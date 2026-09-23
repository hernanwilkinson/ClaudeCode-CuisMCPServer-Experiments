package simshotels;

import java.util.ArrayList;
import java.util.HashMap;

abstract class SimsHotelsTest {

    // create

    protected Floor createFloorWithAnd(Number aNumberOfRooms, HashMap<String, Integer> aPriceList) {
        return Floor.withNumberOfRoomsAndPrices(aNumberOfRooms, aPriceList);
    }

    protected Hotel createHotelWith(Floor... someFloors) {
        ArrayList<Floor> floors = new ArrayList<>();

        for (Floor floor : someFloors) {
            floors.add(floor);
        }

        return Hotel.withFloors(floors);
    }

    protected HashMap<String, Integer> defaultPriceList() {
        HashMap<String, Integer> priceList = new HashMap<>();
        priceList.put(guestTypeVacation(), minPriceInList());
        priceList.put(guestTypeConference(), maxPriceInList());
        return priceList;
    }

    protected String guestTypeConference() {
        return "conferenceGuest";
    }

    protected String guestTypeVacation() {
        return "vacationGuest";
    }

    protected int maxPriceInList() {
        return 200;
    }

    protected int minPriceInList() {
        return 100;
    }
}
