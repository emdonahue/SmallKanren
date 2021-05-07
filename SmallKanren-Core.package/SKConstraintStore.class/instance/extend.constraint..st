checking
extend: aVar constraint: aConstraint
	<type: #SKVar type: #(NotC SKSatisfiedConstraint SKUnsatisfiableConstraint) returns: #integrityCheck>
	^ self copy hashmap: (hashmap with: aVar as: aConstraint).