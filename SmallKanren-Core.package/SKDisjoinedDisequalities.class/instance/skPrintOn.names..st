printing
skPrintOn: aStream names: aVarNames
	aStream nextPut: $(.
	^ self printDisequalityListOn: aStream names: aVarNames