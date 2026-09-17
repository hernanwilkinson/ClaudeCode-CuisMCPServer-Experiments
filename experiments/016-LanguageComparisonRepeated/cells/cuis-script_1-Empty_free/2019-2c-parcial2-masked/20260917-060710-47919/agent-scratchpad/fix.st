#( #test56CrawlerIsNotGuardedAfterAFailedGuardedRun #test57CrawlerIsNotGuardedAfterAFinishedGuardedRun ) do: [ :s |
	SurveyCrawlerTest compile: ((SurveyCrawlerTest sourceCodeAt: s) copyReplaceAll: '1@8' with: '1@7') classified: 'tests' ].
'ok'
