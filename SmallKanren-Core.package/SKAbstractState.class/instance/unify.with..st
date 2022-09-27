substitution
unify: aVar with: aVal
	<todo> "Consider testing == after first walk in case walked var == unwalked val."
	aVar == aVal ifTrue: [ ^ self ]. "Prevents self unification"
	^ (self walk: aVar) skUnify: (self walk: aVal) in: self.