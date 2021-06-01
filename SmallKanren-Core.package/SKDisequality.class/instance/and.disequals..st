adding
and: aVar disequals: aVal
	"Builds up SingleDisequalities into a ConjoinedDisequality"
	^ self addDisequality: (SKDisequalityPair new var: aVar; val: aVal).