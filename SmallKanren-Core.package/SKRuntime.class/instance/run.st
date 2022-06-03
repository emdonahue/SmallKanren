running
run
	^ self runStates collect: [ :s | s  reify: queryVars ].