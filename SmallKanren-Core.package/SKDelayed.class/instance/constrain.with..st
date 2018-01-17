delaying
constrain: aVar with: aConstraint
	"Called only by non delay constraints. Although this may fail, it cannot directly affect the cached delayedVars. Thus, the result must always be delayed."

	<type: #isSKVar type: #(AndC isConstraint #(NotC isDelayed)) returns: #(OrC isEmptyStream #(AndC SKDelayed #packageC))>
	^ (state constrain: aVar with: aConstraint) suspendedVars: suspendedVars