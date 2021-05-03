testing
dis: aVar equals: aVal 	
	^ (SKSubstitution empty unify: aVar noWalk: aVal) asDisequality.