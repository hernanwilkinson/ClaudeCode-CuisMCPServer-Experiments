package simshotels;

/**
 * Common behavior of the states in which a room is no longer available:
 * it is already reserved or already occupied by a guest.
 */
public abstract class UnavailableRoom extends RoomState {

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
}
