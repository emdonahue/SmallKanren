arithmetic
plus: anAnswer
	"Because this represents a final answer to be returned to the user, we should return this stream before any other unless the search strategy explicitly says otherwise."

	self score < anAnswer score
		ifTrue: [ ^ self mplus: anAnswer ].
	^ anAnswer mplus: self