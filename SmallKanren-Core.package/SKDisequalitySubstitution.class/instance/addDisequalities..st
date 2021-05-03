disequality
addDisequalities: aState 
	"If two free vars are bound as the primary disequality, add a constraint to both vars. Otherwise, only add the constraint to var."
	^ (val isSKVar 
		ifTrue: [ aState add: val constraint: (deltas andDisequals: var) ] ifFalse: aState) 
		add: var constraint: (deltas andDisequals: val).