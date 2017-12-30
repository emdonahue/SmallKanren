printing
printDisequalityListOn: aStream names: aVarNames
	| names |
	names := self skPrintOn: aStream names: aVarNames.
	aStream nextPut: $).
	^ names