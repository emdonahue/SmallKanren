laziness
eager: aVar val: aVal in: aState runtime: aRuntime
	| g s p v st |
	"g := block value: aVal car value: aVal cdr.
	g isFailure ifTrue: [ ^ SKStream failure ].
	^ g run: (aState extend: aVar with: aVal) runtime: aRuntime."
	s := SKSubstitution empty unify: pattern with: aVal.
	s isFailure ifTrue: [ ^ s ].
	p := s reify: pattern.
	v := s reify: aVal.
	st := aState unify: aVal with: v.
	st isFailure ifTrue: [ ^ st ].
	^ (block valueWithArguments: (s reify: vars)) run: aState runtime: aRuntime.