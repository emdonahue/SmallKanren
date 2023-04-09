probability
maximize
	^ (self runStates collect: [ :s | s pseudocounts ]) sum.