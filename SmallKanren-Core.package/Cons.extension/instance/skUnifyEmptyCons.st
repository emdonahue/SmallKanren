*SmallKanren-Core
skUnifyEmptyCons
	^ self ifEmpty: SKSucceed singleton ifNotEmpty: [SKFail singleton] 