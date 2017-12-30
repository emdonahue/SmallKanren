disequality
checkConstraintsOn: aVar boundTo: aValue
	"^ self class new
		substitution: (substitution extend: aVar noCheck: aValue);
		deltas: (deltas add: aVar constraint: aValue)"