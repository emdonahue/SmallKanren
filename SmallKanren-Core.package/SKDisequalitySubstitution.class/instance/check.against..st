disequality
check: aVar against: aValue
	"^ self class new
		substitution: (substitution extend: aVar noCheck: aValue);
		deltas: (deltas add: aVar constraint: aValue)"