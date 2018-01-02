delaying
asDelayed: delayedVars
	"Receives the variables that should have delayed constraints on them for fast access when we need to check whether any more delayed variables remain and choose one."

	<type: #(AllC #isSKVar) returns: #delayedC>
	^ SKDelayed new
		state: self;
		delayedVars: delayedVars