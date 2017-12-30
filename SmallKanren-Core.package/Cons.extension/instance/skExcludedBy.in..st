*SmallKanren-Core
skExcludedBy: aConstraint in: aState
	"Lists must recursively check for the excluded term, including potentially in a not-yet-unified tail."

	^ self ifEmpty: aState ifNotEmpty: [:s | 
		((aState walk: s peek) skExcludedBy: aConstraint in: aState) excluded: s step by: aConstraint]