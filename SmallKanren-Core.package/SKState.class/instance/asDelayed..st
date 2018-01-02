delaying
asDelayed: delayedVars
	<type: #(AllC isSKVar) returns: #delayedC>
	^ delayedVars ifEmpty: self ifNotEmpty: [ :vars | SKDelayed new
		state: self;
		delayedVars: vars ]