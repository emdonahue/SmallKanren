delaying
delay: aVar with: aConstraint
	<type: #isSKVar type: #isConstraint returns: #(AndC SKDelayed delayedC)>
	^ SKDelayed new state: (self constrain: aVar with: aConstraint) 