*SmallKanren-Core
skPrintOn: aStream names: aLabeler
	aStream nextPut: ${.
	self do: [ :x | x skPrintOn: aStream names: aLabeler ]
		separatedBy: [ aStream nextPut: Character space ].
	aStream nextPut: $}.