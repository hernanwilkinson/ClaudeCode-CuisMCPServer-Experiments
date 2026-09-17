SurveyCrawlerTest removeFromSystem.
Object subclass: #SurveyCrawler instanceVariableNames: 'position facing sonar random runState lastMovementCommand' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #SeabedGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #FirmSandGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #SiltGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #BoulderGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerMovementCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerMovementCommand subclass: #CrawlerAdvanceCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerMovementCommand subclass: #CrawlerRetreatCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerMovementCommand subclass: #CrawlerTurnClockwiseCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerMovementCommand subclass: #CrawlerTurnCounterClockwiseCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerRunState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunState subclass: #CrawlerNormalRun instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunState subclass: #CrawlerGuardedRun instanceVariableNames: 'executedCommands' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
TestCase subclass: #SurveyCrawlerTest instanceVariableNames: 'sonar random' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
Object subclass: #SimulatedSonar instanceVariableNames: 'grounds' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
Object subclass: #SimulatedRandom instanceVariableNames: 'numberToReturn requestedLimit' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
#(advance: retreat:) do: [:s | CrawlerFacing withAllSubclasses do: [:c | c removeSelector: s]].
#(moveUp moveDown moveLeft moveRight isAdvanceCommand: isRetreatCommand: isTurnClockwiseCommand: isTurnCounterClockwiseCommand: initializeAt:facing:) do: [:s | SurveyCrawler removeSelector: s].
SurveyCrawler class removeSelector: #at:facing:.
#done
