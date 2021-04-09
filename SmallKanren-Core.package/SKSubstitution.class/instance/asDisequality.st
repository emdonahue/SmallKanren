disequality
asDisequality
	"If, after unifying the terms of a disequality constraint, the substitution remains unchanged, then the terms of the disequality are all already equal and we should return a failing constraint."	
	^ SKConstraint unsatisfiable.