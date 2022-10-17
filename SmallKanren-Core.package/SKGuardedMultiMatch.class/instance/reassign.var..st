scheduling
reassign: oldVar var: newVar
	(externals includes: oldVar) ifTrue: [ ^ self copy externals: (internals collect: [ :v | v = oldVar ifTrue: newVar ifFalse: v ]) ].