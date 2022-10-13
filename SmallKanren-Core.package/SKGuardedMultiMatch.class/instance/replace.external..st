scheduling
replace: aVar external: bVar
	^ self setExternals: (externals collect: [ :v | v = aVar ifTrue: [bVar] ifFalse: [v]]).