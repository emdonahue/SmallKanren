checking
extend: aVar constraint: aConstraint
	<type: #SKVar type: #(NotC SKSatisfiedConstraint SKUnsatisfiableConstraint) type: #integrityCheck>
	^ self copy bindings: (hashmap copy at: aVar put: aConstraint; yourself).