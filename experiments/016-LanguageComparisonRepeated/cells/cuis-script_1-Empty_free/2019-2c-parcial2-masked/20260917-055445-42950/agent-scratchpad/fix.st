| tests |
tests := OrderedCollection new.
tests add: 'test19DigitRepeatsLastTurnClockwise
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''h0''.
	self assert: (crawler isAt: 1@2 facing: #Left)'.
tests add: 'test20DigitRepeatsLastTurnCounterClockwise
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''g1''.
	self assert: (crawler isAt: 1@2 facing: #Up)'.
tests add: 'test21DigitRepeatsOnlyTheLastCommand
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''ha0a''.
	self assert: (crawler isAt: 5@2 facing: #Right)'.
tests add: 'test31CommandsAfterABoulderAreNotProcessed
	| crawler |
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''hgah'' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test40GuardedRunUndoesTurnsAndRetreats
	| crawler |
	sonar boulderAt: 0@-2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''(hatgt1ga)'' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test41GuardedRunOnlyUndoesItsOwnMovements
	| crawler |
	sonar boulderAt: 2@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''a(a)h(aga)'' with: crawler boulderFoundErrorDescription andIsAt: 1@4 facing: #Right'.
tests do: [ :source | SurveyCrawlerTest compile: source classified: 'tests' ].
"destination argument is not needed by the grounds"
{ SeabedGround. FirmSand. Silt. Boulder } do: [ :aClass | | source |
	source := (aClass sourceCodeAt: #moveCrawler:to:towards:) asString copyReplaceAll: 'moveCrawler: aCrawler to: aDestination towards: aDirection' with: 'moveCrawler: aCrawler towards: aDirection'.
	aClass removeSelector: #moveCrawler:to:towards:.
	aClass compile: source classified: 'moving' ].
SurveyCrawler compile: 'moveTowards: aDirection

	(sonar groundAt: position + aDirection) moveCrawler: self towards: aDirection' classified: 'moving'.
nil
