streaming
plus: anAnswer
	"Since this answer is already fully complete, just return it rather than interleaving."
	<todo> "polymorphic with lazy state"
	self isLazy ifTrue: [ ^ super plus: anAnswer ].
	 ^ self mplus: anAnswer 