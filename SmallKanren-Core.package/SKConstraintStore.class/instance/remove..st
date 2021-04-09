removing
remove: aVar

	^ (hashmap includesKey: aVar)
		  ifTrue: [ self removeKey: aVar ]
		  ifFalse: [ self ]