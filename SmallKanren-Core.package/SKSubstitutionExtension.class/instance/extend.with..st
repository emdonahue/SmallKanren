substitution
extend: aVar with: aValue
	^ self copy substitution: (substitution extend: aVar with: aValue)