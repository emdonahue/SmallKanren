checking
reduceWithInitialValue: aValue
	^(self first reduceWithInitialValue: aValue) disjoinDisequality: self next