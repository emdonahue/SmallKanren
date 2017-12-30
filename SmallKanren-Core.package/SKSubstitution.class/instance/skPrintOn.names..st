printing
skPrintOn: aStream names: aLabeler
	aStream nextPut: $(.
	(hashmap associations asArray select: [ :a | a key isTaggedVar ]) "Only print debug-tagged variables to reduce clutter."
		do: [ :a | 
			a key skPrintOn: aStream names: aLabeler.
			aStream nextPutAll: '->'.
			(a value skReify: self) skPrintOn: aStream names: aLabeler ]
		separatedBy: [ aStream nextPut: Character space ].
	aStream nextPutAll: ')#'.
	self size printOn: aStream.