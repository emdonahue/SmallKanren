generative
evalLine: line
	line first = #==
		ifTrue: [ ^ (self evalAtom: line second) === (self evalAtom: line third) ].
	line first = #typeo
		ifTrue: [ (line third = #symbol) | (line third isSKVar )
				ifTrue: [ ^ (self evalAtom: line second) isSymbolo ].
			line third = #number
				ifTrue: [ ^ (self evalAtom: line second) isNumbero ] ].
	line first = #=/=
		ifTrue: [^ (self evalAtom: line second) =/= (self evalAtom: line third) ].
	Error signal: 'Unrecognized operation'