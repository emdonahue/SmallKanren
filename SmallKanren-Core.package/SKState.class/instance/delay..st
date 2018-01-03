delaying
delay: delayedVars
	<type: #(AllC isSKVar) returns: #packageC>
	^ 
			SKDelayed new
				state: self;
				delayedVars: delayedVars