"modifying"
extendAndCheck: aVar with: aValue
	^ (self extend: aVar with: aValue) checkConstraintsOn: aVar boundTo: aValue