adding
and: aVar disequality: aVal
	"Builds up SingleDisequalities into a ConjoinedDisequality"
	^ SKConjoinedDisequalities new
		left: aVar;
		right: aVal;
		next: self