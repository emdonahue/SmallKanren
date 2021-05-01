enumerating
inject: initState into: aBlock
	| currState |
	currState := initState.
	self do: [ :s | currState := aBlock value: currState value: s ].
	^ currState