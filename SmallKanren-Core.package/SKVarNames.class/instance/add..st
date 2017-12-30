adding
add: aVar
	^ (names includesKey: aVar)
		ifTrue: self
		ifFalse: [ self copy names: (names at: aVar put: names size; yourself) ]