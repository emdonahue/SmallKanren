printing
printDisequalityListOn: aStream
	constraint printOn: aStream.
	aStream nextPutAll: ' | '.
	next printDisequalityListOn: aStream