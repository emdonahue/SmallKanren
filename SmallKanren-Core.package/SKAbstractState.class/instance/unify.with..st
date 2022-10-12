substitution
unify: aVar with: aVal
	| var varB s |
	aVar == aVal ifTrue: [ ^ self ]. "Prevents self unification"
	varB := (self walkBinding: aVar).
	var := varB isFDSAssociation & aVar isSKVar ifTrue: [ varB val ] ifFalse: [varB].
	var == aVal ifTrue: [ ^ self ].
	s := self unify: var noWalk: (self walk: aVal).
	^ varB isFDSAssociation & aVar isSKVar ifTrue: [ ^ s prioritizeSchedule: varB key ] ifFalse: [s].