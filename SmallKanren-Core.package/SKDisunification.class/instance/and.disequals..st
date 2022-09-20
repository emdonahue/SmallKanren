adding
and: aVar disequals: aVal
	"Conjoins disequality pairs. Ground terms float to front."
	aVal isSKVar not | self val isSKVar ifTrue: [ 
		^ self addDisequality: (SKDisequalityPair new var: aVar; val: aVal)].
	^ (self rest and: aVar disequals: aVal) addDisequality: self first.