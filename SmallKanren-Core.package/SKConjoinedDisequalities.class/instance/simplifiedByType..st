simplifying
simplifiedByType: aType
	^ (aType typeChecks: right) ifTrue: self ifFalse: self rest.