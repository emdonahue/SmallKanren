delaying
delay: aVar with: aConstraint
	"Called by a delay constraint when aVar is free, guaranteed to either fail a type constraint check OR delay the package."

	<type: #isSKVar type: #isConstraint returns: #(AndC SKDelayed #packageC)>
	^ (self constrain: aVar with: aConstraint) delay: aVar cons