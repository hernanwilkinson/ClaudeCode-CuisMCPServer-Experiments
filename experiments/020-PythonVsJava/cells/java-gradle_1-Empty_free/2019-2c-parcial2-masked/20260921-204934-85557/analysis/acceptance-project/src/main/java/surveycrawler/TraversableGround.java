package surveycrawler;

public abstract class TraversableGround extends SeabedGround {

    // facing

    @Override
    public void turn(CrawlerTurn aTurn) {
        aTurn.turn();
    }
}
