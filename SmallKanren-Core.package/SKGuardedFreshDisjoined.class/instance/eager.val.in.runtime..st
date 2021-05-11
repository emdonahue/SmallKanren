laziness
eager: aVar val: aVal in: aState runtime: aRuntime
	| s p v st |
	"s := SKSubstitution empty unify: pattern with: aVal.
	s isFailure ifTrue: [ ^ s ].
	p := s reify: pattern.
	v := s reify: aVal.
	st := aState unify: aVal with: v.
	st isFailure ifTrue: [ ^ st ].
	^ (self runGuards: p in: st runtime: aRuntime) run: st runtime: aRuntime."
	
	^ super eager: aVar val: aVal in: aState runtime: aRuntime.
	
	"s := (SKSubstitution empty unify: pattern with: aVal) ifFailure: [ ^ SKStream failure ].
	^ (self runGuards: (s reify: pattern) in: nil runtime: aRuntime)
		run: ((aState unify: aVal with: (s reify: aVal)) ifFailure: [ ^ SKStream failure ])
		runtime: aRuntime."
	