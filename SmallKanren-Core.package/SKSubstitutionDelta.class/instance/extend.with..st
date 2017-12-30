as yet unclassified
extend: aVar with: aValue
	^ self class new
		substitution: (substitution extend: aVar noOccursCheck: aValue);
		deltas: (deltas and: aVar disequality: aValue)