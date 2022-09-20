disequality
addDisequalities: aState 
	"If two free vars are bound as the primary disequality, add a constraint to both vars. Otherwise, only add the constraint to var."
	var ifNil: [ ^ SKFailure failure ].
	^ (val isSKVar 
		ifTrue: [ aState add: val constraint: (constraint andDisequals: var) ] ifFalse: [aState]) 
		add: var constraint: (constraint andDisequals: val).