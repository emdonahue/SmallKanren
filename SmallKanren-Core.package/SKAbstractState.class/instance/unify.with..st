substitution
unify: aVar with: aVal
	| var |
	aVar == aVal ifTrue: [ ^ self ]. "Prevents self unification"
	var := (self walk: aVar).
	var == aVal ifTrue: [ ^ self ].
	^ self unify: var noWalk: (self walk: aVal).