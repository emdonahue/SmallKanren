adding
add: aVar in: aState
	"Disequalities must be added to both the left and right variable if we are disunifying two vars."
	^ super add: aVar in: 
		(right isSKVar 
			ifTrue: [ aState add: right constraint: self reversed ] 
			ifFalse: aState).