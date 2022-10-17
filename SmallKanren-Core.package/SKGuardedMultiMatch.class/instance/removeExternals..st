scheduling
removeExternals: someVars
	^ self copy externals: (externals reject: [ :v | someVars includes: v ]).