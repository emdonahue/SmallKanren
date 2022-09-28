disunifying
addDisequalities: aState
	^ (self val isSKVar 
			ifTrue: [ aState check: self val constraint: self asDisequalityInverse ] 
			ifFalse: [ aState ])
		check: self var constraint: self asDisequality.