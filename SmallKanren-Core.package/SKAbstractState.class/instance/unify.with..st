substitution
unify: aVar with: aVal
	| varB valB |
	aVar == aVal ifTrue: [ ^ self ]. "Prevents self unification"

	varB := (self walkBinding: aVar).
	varB val == aVal ifTrue: [ ^ self ]. "Might as well do a quick equality check before more walking."

	valB := self walkBinding: aVal.
	
	^ (self unify: varB val noWalk: valB val) reprioritize: varB schedule: valB.