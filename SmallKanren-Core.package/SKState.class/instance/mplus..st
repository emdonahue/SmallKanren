streaming
mplus: anAnswer
	<todo> "polymorphic with lazy state"
	self isLazy ifTrue: [ ^ super mplus: anAnswer ].
	^ self returnAnswer: self thenStream: anAnswer