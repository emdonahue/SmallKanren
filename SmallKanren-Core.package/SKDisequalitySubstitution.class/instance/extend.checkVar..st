as yet unclassified
extend: aVar checkVar: otherVar
	^ (self extend: aVar noOccursCheck: otherVar) check: aVar against: otherVar