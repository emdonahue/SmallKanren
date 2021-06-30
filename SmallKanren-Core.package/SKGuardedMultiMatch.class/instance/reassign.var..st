running
reassign: oldVar var: newVar
	(externals includes: oldVar) ifTrue: [ ^ self reassignVar: (internals collect: [ :v | v = oldVar ifTrue: newVar ifFalse: v ]) ].