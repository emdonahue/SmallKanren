*SmallKanren-Core
skDisunifyPrim: aVal
	^ self = aVal ifTrue: SKFailure singleton ifFalse: SKSuccess singleton