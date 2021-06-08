running
reassignVar: aVar
	aVar = var ifFalse: [ ^ self copy var: aVar ].