running
reassignVar: aVar
	aVar = externals ifFalse: [ ^ self copy var: aVar ].