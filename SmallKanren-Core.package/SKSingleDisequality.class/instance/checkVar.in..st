checking
checkVar: aVar in: aState
	"Disequalities can fail even with a free var, so check them normally."
	^ self fire: aVar in: aState.