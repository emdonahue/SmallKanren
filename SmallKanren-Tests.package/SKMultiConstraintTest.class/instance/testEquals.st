tests
testEquals
	self
		assert:
			(SKMultiConstraint new
				type: SKSymbolConstraint singleton;
				disequality: (x =/= 1) asConstraint;
				exclusion: (x excludes: 2) asConstraint)
		equals: SKSymbolConstraint singleton & (x =/= 1) & (x excludes: 2)