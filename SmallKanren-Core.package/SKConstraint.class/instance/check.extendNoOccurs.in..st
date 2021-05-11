checking
check: aVal extendNoOccurs: aVar in: aState
	^ ((self check: aVal in: aState) removeConstraint: aVar) extend: aVar noOccursCheck: aVal.