*SmallKanren-Core
skUnifyPrimitive: aVal
	"Since Var and Cons override this method, aPrim is guaranteed to be primitive."
	^ self = aVal ifTrue: SKSuccess singleton ifFalse: SKFailure singleton