removing
remove: aDelayedVar
	^ first var = aDelayedVar var ifTrue: rest ifFalse: [ (rest remove: aDelayedVar)  add: first ]