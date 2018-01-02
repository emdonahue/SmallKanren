delaying
delay: aVar with: aConstraint
	"transfer any caches here"

	<type: #isSKVar type: #isConstraint returns: #(AndC SKDelayed delayedC)>
	<todo>
	^ state delay: aVar with: aConstraint