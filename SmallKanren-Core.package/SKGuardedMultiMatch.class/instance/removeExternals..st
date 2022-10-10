scheduling
removeExternals: someVars
	^ self setExternals: (externals reject: [ :v | someVars includes: v ]).