adding
and: aVar disequals: aVal
	"Builds up SingleDisequalities into a ConjoinedDisequality"
	^ self add: (SKDisequalityPair new var: aVar; val: aVal).