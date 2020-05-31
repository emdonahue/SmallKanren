deprecated
allBut: x
	self halt.
	^ self all reject: [ :a | a = x ]