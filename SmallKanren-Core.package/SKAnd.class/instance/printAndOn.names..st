printing
printAndOn: aStream names: varNames
	| names |
	names := left printAndOn: aStream names: varNames.
	aStream nextPutAll: ' & '.
	^ right printAndOn: aStream names: names.