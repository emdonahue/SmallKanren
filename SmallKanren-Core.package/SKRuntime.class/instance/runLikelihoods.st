running
runLikelihoods
	| q |
	q := 1 = queryVars size ifTrue: [queryVars first] ifFalse: queryVars.
	^ self runStates collect: [ :s | {s reify: q. s likelihood}].