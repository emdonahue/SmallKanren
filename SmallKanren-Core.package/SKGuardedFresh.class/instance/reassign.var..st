running
reassign: oldVar var: newVar
	externals = oldVar ifTrue: [ ^ self reassignVar: newVar ].