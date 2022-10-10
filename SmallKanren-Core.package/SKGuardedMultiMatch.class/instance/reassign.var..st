scheduling
reassign: oldVar var: newVar
	(externals includes: oldVar) ifTrue: [ ^ self setExternals: (internals collect: [ :v | v = oldVar ifTrue: newVar ifFalse: v ]) ].