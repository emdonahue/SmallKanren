constraintstore
removeConstraint: aVar
	^ (store removeKey: aVar)
		ifEmpty: [ substitution ]
		ifNotEmpty: [ :s | self class new store: s; substitution: substitution ]