substitution
extend: aVar with: aValue
	^ self extend: (state extend: aVar with: aValue)