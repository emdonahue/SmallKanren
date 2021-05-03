*SmallKanren-Core
skAbsento: aConstraint in: aState
	"Lists must recursively check for the excluded term, including potentially in a not-yet-unified tail."

	^ self ifEmpty: aState ifNotEmpty: [:s | 
		((aState walk: s peek) skAbsento: aConstraint in: aState) check: s step absento: aConstraint]