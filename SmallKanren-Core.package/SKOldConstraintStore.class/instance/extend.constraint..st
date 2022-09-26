checking
extend: aVar constraint: aConstraint
	<type: #SKVar type: #(NotC SKSatisfiedConstraint SKUnsatisfiableConstraint) type: #integrityCheck>
	^ self copy hashmap: (hashmap copy at: aVar put: aConstraint; yourself).