running
reassign: oldVar var: newVar
	(var includes: oldVar) ifTrue: [ ^ self reassignVar: (vars collect: [ :v | v = oldVar ifTrue: newVar ifFalse: v ]) ].