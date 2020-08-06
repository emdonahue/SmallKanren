constraining
constrain: aVar with: aConstraint
	"Called by a Constraint during firing to add additional, simplified constraints to the store. This will ultimately call Constraint>>#constrain:with:in: to merge constraints if some already exist on aVar. Called directly by non-delay constaint checks, and indirectly by delay checks to extend the store."

	<type: #SKVar type: #SKConstraint returns: #isMaybeStream>
	^ constraints constrain: aVar with: aConstraint in: self