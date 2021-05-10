laziness
eager: aVar in: aState runtime: aRuntime
	| s p v st |
	st := aState removeConstraint: aVar.
	s := (self runGuards: pattern in: st runtime: aRuntime) run: st runtime: aRuntime.
	s isFailure ifTrue: [ ^ s ].
	^ (s extend: aVar with: pattern).
	