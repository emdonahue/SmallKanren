scheduling
setExternals: aVar
	aVar = externals ifFalse: [ ^ self copy externals: aVar ].