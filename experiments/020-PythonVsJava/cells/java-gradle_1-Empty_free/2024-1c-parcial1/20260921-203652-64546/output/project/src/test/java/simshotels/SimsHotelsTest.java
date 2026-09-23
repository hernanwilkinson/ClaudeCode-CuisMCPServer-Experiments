package simshotels;

import java.util.HashMap;
import java.util.Map;

/**
 * Objects and values shared by the three test cases of the simulation.
 */
abstract class SimsHotelsTest {

    // create

    protected Floor createFloorWithAnd(Number aNumberOfRooms, Map<String, Integer> aPrice) {
        return Floor.withNumberOfRoomsAndPrices(aNumberOfRooms, aPrice);
    }

    protected Map<String, Integer> defaultPriceList() {
        Map<String, Integer> priceList = new HashMap<>();
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
