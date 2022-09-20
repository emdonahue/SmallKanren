disunifying
addDisequalities: aState
	^ (self val isSKVar 
			ifTrue: [ aState add: self val constraint: self asDisequalityInverse ] 
			ifFalse: [ aState ])
		add: self var constraint: self asDisequality.