running
reassign: oldVar var: newVar
	var = oldVar ifTrue: [ ^ self reassignVar: newVar ].