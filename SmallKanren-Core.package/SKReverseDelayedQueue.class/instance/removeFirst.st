removing
removeFirst
	^ reverse isEmpty
		ifTrue: [ forward removeFirst ]
		ifFalse: [ 
				(reverse rest) forward: forward ]