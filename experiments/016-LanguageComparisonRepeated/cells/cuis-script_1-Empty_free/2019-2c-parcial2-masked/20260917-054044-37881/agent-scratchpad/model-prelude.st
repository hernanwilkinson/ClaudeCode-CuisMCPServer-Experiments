Object subclass: #SurveyCrawler instanceVariableNames: 'position facing sonar random runMode lastCommand' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #SeabedGroundType instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGroundType subclass: #SeabedFirmSand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGroundType subclass: #SeabedSilt instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGroundType subclass: #SeabedBoulder instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerRunMode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode subclass: #CrawlerFreeRun instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode subclass: #CrawlerGuardedRun instanceVariableNames: 'undoActions' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerAdvanceCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerRetreatCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerTurnClockwiseCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerTurnCounterClockwiseCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerStartGuardedRunCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerEndGuardedRunCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerNonRepeatableCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
#(#moveUp #moveDown #moveLeft #moveRight #isAdvanceCommand: #isRetreatCommand: #isTurnClockwiseCommand: #isTurnCounterClockwiseCommand: #initializeAt:facing:) do: [:each | SurveyCrawler removeSelector: each].
SurveyCrawler class removeSelector: #at:facing:.
{CrawlerFacing. CrawlerFacingUp. CrawlerFacingDown. CrawlerFacingLeft. CrawlerFacingRight} do: [:each | each removeSelector: #advance:; removeSelector: #retreat:].
{CrawlerFacingUp. CrawlerFacingDown. CrawlerFacingLeft. CrawlerFacingRight} do: [:each | each class organization classify: #facingName under: 'facing name'].
