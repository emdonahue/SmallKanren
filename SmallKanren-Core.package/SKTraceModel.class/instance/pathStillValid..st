as yet unclassified
pathStillValid: aPath
	"Returns true if aPath represents a valid beginning to this model's trace."

	"A path that is too long certainly can't be on the way to completing a shorter trace."

	aPath size > trace size
		ifTrue: [ ^ false ].

	"Each element of the path should be equal to its counterpart in the trace with the exception of the last, which may be a prefix. (It is possible that equality here could be weakened to prefix)."
	aPath reverse
		with: trace reverse
		do: [ :a :b | 
			(b reverse beginsWith: a reverse)
				ifFalse: [ ^ false ] ].
	^ true