delaying
add: aVar constraint: aConstraint
	"Called only by non delay constraints. Although this may fail, it cannot directly affect the cached delayedVars. Thus, the result must always be delayed."

	<type: #isSKVar type: #(AndC isConstraint #(NotC isDelayed)) returns: #(OrC #isFailure #(AndC SKDelayed #packageC))>
	^ (state add: aVar constraint: aConstraint) suspendedVars: suspendedVars