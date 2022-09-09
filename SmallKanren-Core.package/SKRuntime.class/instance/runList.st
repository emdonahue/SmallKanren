running
runList
	^ self runStates collect: [ :s | s  reify: queryVars ].