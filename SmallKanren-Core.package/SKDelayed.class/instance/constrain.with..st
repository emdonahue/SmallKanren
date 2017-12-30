delaying
constrain: aVar with: aConstraint
	<type: #isSKVar type: #isConstraint returns: #delayedC>
	^ (state constrain: aVar with: aConstraint) asDelayed