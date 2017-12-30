printing
skPrintOn: aStream  names: varNames
	aStream nextPutAll: 'excludes: '.
	^ self printDisjoinedExclusionsOn: aStream names: varNames