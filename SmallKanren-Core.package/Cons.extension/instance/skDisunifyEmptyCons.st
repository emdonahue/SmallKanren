*SmallKanren-Core
skDisunifyEmptyCons
	^ self ifEmpty: SKFailure singleton ifNotEmpty: [ SKSuccess singleton ]