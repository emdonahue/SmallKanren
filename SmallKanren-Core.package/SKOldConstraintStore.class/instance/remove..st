removing
remove: aVar
	<todo> "write a contract that confirms includes key"
	^ (hashmap includesKey: aVar)
		  ifTrue: [ self removeKey: aVar ]
		  ifFalse: [ self ]