extending
extend: aVar noOccursCheck: aValue
	^ self class new
		substitution: (substitution extend: aVar noOccursCheck: aValue);
		deltas: (deltas and: aVar disequality: aValue)