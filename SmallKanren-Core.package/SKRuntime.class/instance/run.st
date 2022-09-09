running
run
	| q |
	q := queryVars size = 1 ifTrue: [ queryVars first ] ifFalse: [ queryVars ].
	^ self runStates collect: [ :s | s  reify: q ].