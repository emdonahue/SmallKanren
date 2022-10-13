substitution
unify: aVar with: aVal
	| var varB s val valB |
	aVar == aVal ifTrue: [ ^ self ]. "Prevents self unification"

	varB := (self walkBinding: aVar). "The binding lets us know if var might be in the schedule."
	var := varB isFDSAssociation & aVar isSKVar ifTrue: [ varB val ] ifFalse: [varB]. "Bindings imply var is inside the substitution UNLESS it was just a ground FDSAssociation."

	var == aVal ifTrue: [ ^ self ]. "Might as well do a quick equality check before more walking."
	valB := self walkBinding: aVal.
	val := valB isFDSAssociation & aVal isSKVar ifTrue: [ valB val ] ifFalse: [valB].	
	
	s := self unify: var noWalk: val.

	varB isFDSAssociation & aVar isSKVar ifTrue: [ ^ s prioritize: varB key schedule: val ].
	valB isFDSAssociation & aVal isSKVar ifTrue: [ ^ s prioritize: valB key schedule: var ].
	^ s.