printing
printOn: aStream index: anInteger names: varNames
	aStream nextPutAll: 'excludes: '.
	self printDisjoinedExclusionsOn: aStream names: varNames