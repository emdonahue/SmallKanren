*SmallKanren-Core
skDisunifyPrim: aVal
	^ self = aVal ifTrue: SKFail singleton ifFalse: SKSucceed singleton