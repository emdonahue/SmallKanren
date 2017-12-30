*SmallKanren-Core
skPrintOn: aStream names: varNames
	| names |
	names := varNames.
	aStream nextPut: $(.
	(varNames reify: self)
		do: [ :a | names := a skPrintOn: aStream names: names ]
		separatedBy: [ aStream space ]
		ifNotProper: [ :a | 
			aStream nextPutAll: ' . '.
			names := a skPrintOn: aStream names: names ].
	aStream nextPut: $).
	^ names