"modifying"
extend: aVar check: aValue
	^ (self extend: aVar with: aValue) check: aVar against: aValue