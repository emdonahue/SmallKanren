printing
printOn: aStream index: anInteger names: aVarNames
	aStream nextPut: $(.
	self printDisequalityListOn: aStream names: aVarNames