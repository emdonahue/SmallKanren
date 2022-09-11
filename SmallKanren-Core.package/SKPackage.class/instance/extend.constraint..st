constraining
extend: aVar constraint: aConstraint
	<type: #SKVar type: #SKConstraint type: #SKPackage>
	"By this point, all constraint checking and simlifying is done and we just want to add the constraint to the store."
	^ self copy constraints: (constraints extend: aVar constraint: aConstraint)