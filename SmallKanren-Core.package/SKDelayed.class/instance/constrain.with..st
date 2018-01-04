delaying
constrain: aVar with: aConstraint
	"Called only by non delay constraints. Although this may fail, it cannot directly affect the cached delayedVars."

	<type: #isSKVar type: #(AndC isConstraint #(NotC isDelayed)) returns: #(AndC SKDelayed #packageC)>
	^ (state constrain: aVar with: aConstraint) delay: delayedVars