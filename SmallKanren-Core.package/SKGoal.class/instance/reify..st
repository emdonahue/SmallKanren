running
reify: aVar
	^ self runStates collect: [ :s | s reify: aVar ]