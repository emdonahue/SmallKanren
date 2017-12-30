unification
skOccurs: aVar in: aSubstitution
	"Performs an occurs-check"

	| walked |
	self == aVar
		ifTrue: [ ^ SKEmptyStream singleton ].
	walked := aSubstitution walk: self.
	walked == self
		ifTrue: [ ^ aSubstitution ].
	^ walked skOccurs: aVar in: aSubstitution