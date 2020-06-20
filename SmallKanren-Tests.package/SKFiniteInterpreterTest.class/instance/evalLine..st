generative
evalLine: line
	line first = #==
		ifTrue: [ ^ (self evalAtom: line second) === (self evalAtom: line third) ].
	Error  signal