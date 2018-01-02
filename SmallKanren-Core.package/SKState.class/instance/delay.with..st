delaying
delay: aVar with: aConstraint
	<type: #isSKVar type: #isConstraint returns: #(AndC SKDelayed delayedC)>
	^ (self constrain: aVar with: aConstraint) asDelayed: aVar cons.