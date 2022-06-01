probability
condition: aState
	"Called forthe last state emitted from a conditional."
	(self hasEquivalentConstraints: aState) ifTrue: [ ^ self mergePseudoCounts: aState ]. "If same substitution/constraints as aState, merge."
	aState pseudoCounts ifNotEmpty: [ ^ self + aState ]. "If aState has aggregated some counts, return both states."
	"Otherwise, return this state unchanged."
	
	