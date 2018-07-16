printing
printOn: aStream
	aStream nextPutAll: 'delayed: '.
	suspendedVars printOn: aStream