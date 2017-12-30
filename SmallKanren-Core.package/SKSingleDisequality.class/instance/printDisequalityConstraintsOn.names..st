printing
printDisequalityConstraintsOn: aStream names: aSKVarNames
	| names |
	names := self skPrintOn: aStream  names: aSKVarNames.
	aStream nextPut: $).
	^ names