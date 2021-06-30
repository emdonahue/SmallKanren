removing
removeVar: someVars
	^ self reassignVar: (externals reject: [ :v | someVars includes: v ]).