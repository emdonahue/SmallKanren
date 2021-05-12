streaming
mplus: anAnswer
	<todo> "polymorphic with lazy state"
	self isLazy ifTrue: [ ^ super plus: anAnswer ].
	^ self returnAnswer: self thenStream: anAnswer