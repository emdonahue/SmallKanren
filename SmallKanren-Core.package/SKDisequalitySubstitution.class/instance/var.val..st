accessing
var: aVar val: aVal 
	"Sets a new var and val and updates the deltas. Aims to keep a ground value if at all possible so we don't need to add the disequality to two different vars."
	val isSKVar ifTrue: [ 
		^ self disequality: (constraint and: var disequals: val); var: aVar; val: aVal ].
	"If we already have a ground value, push everything else into the deltas to preserve it as the first constraint."
	self disequality: (constraint and: aVar disequals: aVal).