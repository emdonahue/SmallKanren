as yet unclassified
testTracesUnique
	| s traces numTraces |
	numTraces := 100.
	s := (eval value: y value: env value: x) runtime.
	traces := Set new.
	1 to: numTraces do: [ :i | 
		| state |
		state := s next.
		self deny: (traces includes: state trace).
		traces add: state trace ].
	self assert: traces size equals: numTraces