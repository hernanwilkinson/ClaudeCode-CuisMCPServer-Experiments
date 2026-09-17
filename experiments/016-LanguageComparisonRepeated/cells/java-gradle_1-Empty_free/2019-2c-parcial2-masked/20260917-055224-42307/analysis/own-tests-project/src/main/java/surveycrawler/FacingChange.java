package surveycrawler;

public class FacingChange extends CrawlerMovement {

    private final CrawlerFacing previousFacing;

    // initialization

    public FacingChange(CrawlerFacing aPreviousFacing) {
        previousFacing = aPreviousFacing;
    }

    // undoing

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        aCrawler.changeFacingTo(previousFacing);
    }
}
