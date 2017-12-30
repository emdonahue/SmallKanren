printing
printOn: aStream index: anInteger names: aCollection 
	left skPrintOn: aStream names: aCollection.
	aStream nextPutAll: '=/='.
	right skPrintOn: aStream names: aCollection.