printing
printAndOn: aStream names: varNames
	| names |
	names := conjunctions printAndOn: aStream names: varNames.
	aStream nextPutAll: ' & '.
	^ disjunction printAndOn: aStream names: names