disequality
and: aVar disequals: aVal
	"Builds up SingleDisequalities into a ConjoinedDisequality"
	^ SKConjoinedDisequalities left: aVar right: aVal rest: self.