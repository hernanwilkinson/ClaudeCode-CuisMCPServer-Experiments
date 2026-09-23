package simshotels;

import java.util.HashMap;

/**
 * Objects shared by the three test cases of the simulation.
 */
abstract class SimsHotelsTest {

    // create

    protected Floor createFloorWithAnd(Number aNumberOfRooms, HashMap<String, Integer> aPrice) {
        return Floor.withNumberOfRoomsAndPrices(aNumberOfRooms, aPrice);
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
