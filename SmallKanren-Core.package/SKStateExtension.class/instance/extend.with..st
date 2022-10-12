substitution
extend: aVar with: aValue
	^ self copy state: (state extend: aVar with: aValue)