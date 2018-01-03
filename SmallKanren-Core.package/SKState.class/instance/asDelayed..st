delaying
asDelayed: delayedVars
	<type: #(AllC isSKVar) returns: #packageC>
	^ delayedVars ifEmpty: self ifNotEmpty: [ :vars | SKDelayed new
		state: self;
		delayedVars: vars ]