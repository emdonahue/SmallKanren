delaying
delay: aVar with: aConstraint
	"transfer any caches here"

	<type: #isSKVar type: #isConstraint returns: #(AndC SKDelayed delayedC)>
	<todo>
	^ self class new state: (state constrain: aVar with: aConstraint); delayedVars: (delayedVars add: aVar)