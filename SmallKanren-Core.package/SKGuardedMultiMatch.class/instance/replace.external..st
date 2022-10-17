scheduling
replace: aVar external: bVar
	^ self copy externals: (externals collect: [ :v | v = aVar ifTrue: [bVar] ifFalse: [v]]).