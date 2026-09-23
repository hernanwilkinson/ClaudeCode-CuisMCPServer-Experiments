package surveycrawler;

@FunctionalInterface
public interface SiltSlide {

    // The number of cells the crawler ends up moving, in the direction it was going,
    // when the command makes it end on silt. It is at least one cell, the one the
    // command asked for, and at most the sliding limit of the silt.

    int cellsToSlide();
}
