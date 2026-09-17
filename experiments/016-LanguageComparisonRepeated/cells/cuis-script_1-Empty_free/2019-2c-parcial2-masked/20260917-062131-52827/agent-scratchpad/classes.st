Object subclass: #SurveyCrawler instanceVariableNames: 'position facing sonar runMode lastRepeatableCommand' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #SimulatedSonar instanceVariableNames: 'groundTypesByPosition' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #SeabedGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #FirmSandGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #BoulderGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #SiltGround instanceVariableNames: 'slideDistanceGenerator' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerRunMode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode subclass: #CrawlerNormalRun instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode subclass: #CrawlerGuardedRun instanceVariableNames: 'undoActions' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #SlideDistanceGeneratorStub instanceVariableNames: 'distance requestedLimit' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
SystemOrganization classify: #SurveyCrawlerTest under: 'SurveyCrawler-Tests'.
#done
