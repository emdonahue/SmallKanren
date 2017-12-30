*SmallKanren-Core
skUnifyEmptyCons
	^ self ifEmpty: SKSuccess singleton ifNotEmpty: [SKFailure singleton] 