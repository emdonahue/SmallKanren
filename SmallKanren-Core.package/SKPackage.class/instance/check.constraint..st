constraining
check: aVar constraint: aConstraint
	<type: #SKVar type: #SKConstraint type: #(OrC SKPackage SKFailure)>
	"Called by a ConstraintGoals and Constraints during firing to add additional constraints to the store. This may call Constraint>>#add:constraint:in: to merge constraints if some already exist on aVar. Called directly by non-delay constaint checks, and indirectly by delay checks to extend the store."

	^ constraints check: aVar constraint: aConstraint in: self.