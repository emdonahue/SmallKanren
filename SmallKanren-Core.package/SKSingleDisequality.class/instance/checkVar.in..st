checking
checkVar: aVar in: aState
	"Disequalities can fail even with a free var, so check them normally."
	^ self check: aVar in: aState.