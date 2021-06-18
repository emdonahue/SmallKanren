removing
removeVar: someVars
	^ self reassignVar: (var reject: [ :v | someVars includes: v ]).