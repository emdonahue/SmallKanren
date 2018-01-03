delaying
constrain: aVar with: aConstraint
	"Transfer cache of delayed vars here"

	<type: #isSKVar type: #isConstraint returns: #(AndC SKDelayed #packageC)>
	<todo>
	^ (state delay: aVar with: aConstraint)