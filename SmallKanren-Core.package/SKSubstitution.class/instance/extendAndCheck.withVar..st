constraining
extendAndCheck: aVar withVar: otherVar
	^ (self extend: aVar noOccursCheck: otherVar) checkConstraintsOn: aVar boundTo: otherVar