*SmallKanren-Core
skDisunifyEmptyCons
	^ self ifEmpty: SKFail singleton ifNotEmpty: [ SKSucceed singleton ]