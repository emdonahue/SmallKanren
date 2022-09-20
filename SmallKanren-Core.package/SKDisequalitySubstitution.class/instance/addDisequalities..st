disunifying
addDisequalities: aState 
	"If two free vars are bound as the primary disequality, add a constraint to both vars. Otherwise, only add the constraint to var."
	^ disequality addDisequalities: aState.