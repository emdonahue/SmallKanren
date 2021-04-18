printing
printOn: aStream 
	aStream nextPutAll: 'excludes: '.
	 self printDisjoinedExclusionsOn: aStream 