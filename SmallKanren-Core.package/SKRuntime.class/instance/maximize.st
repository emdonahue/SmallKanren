probability
maximize
	^ (self runStates collect: [ :s | s pseudoCounts ]) sum.