accessing
var: aVar val: aVal 
	"Sets a new var and val and updates the deltas. Aims to keep a ground value if at all possible so fewer disequalities need to be added at the end."
	val isSKVar ifTrue: [ 
		^ self deltas: (constraint and: var disequals: val); var: aVar; val: aVal ].
	"If we already have a ground value, push everything else into the deltas to preserve it as the first constraint."
	self deltas: (constraint and: aVar disequals: aVal).