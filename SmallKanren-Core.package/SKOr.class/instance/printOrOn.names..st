printing
printOrOn: aStream names: varNames
	| names |
	names := left printOrOn: aStream names: varNames.
	aStream nextPutAll: ' || '.
	^ right printOrOn: aStream names: names