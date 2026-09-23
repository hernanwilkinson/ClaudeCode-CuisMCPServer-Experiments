package simshotels;

import java.util.Map;
import java.util.function.Supplier;

/**
 * Common behavior of the states of a room that is no longer available: neither a new guest
 * nor a reservation can be taken, and a room that is not available loses nothing.
 */
abstract class NotAvailableRoomState extends RoomState {

    // guests

    @Override
    public RoomState receive(String aGuestType) {
        Room.signalRoomIsNotEmpty();
        return this;
    }

    @Override
    public RoomState reserve() {
        Room.signalRoomIsNotEmpty();
        return this;
    }

    // testing

    @Override
    public boolean isAvailable() {
        return false;
    }

    @Override
    public boolean isOccupied() {
        return true;
    }

    // accounting

    @Override
    public Integer lossUsingIfAbsentGuestType(Map<String, Integer> aPriceList, Supplier<Integer> unknownGuestTypeBlock) {
        return 0;
    }
}
