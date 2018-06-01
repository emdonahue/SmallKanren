reification
reify: aVar
	^ constraints reify: (substitution reify: aVar)