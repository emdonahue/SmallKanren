disequality
and: aVar disequality: aVal
	"Builds up SingleDisequalities into a ConjoinedDisequality"
	^ SKConjoinedDisequalities left: aVar right: aVal rest: self.