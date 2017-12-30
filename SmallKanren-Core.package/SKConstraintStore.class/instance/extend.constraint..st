constraining
extend: aVar constraint: aConstraint
	self integrityCheck.
	^ self copy hashmap: (hashmap with: aVar as: aConstraint).