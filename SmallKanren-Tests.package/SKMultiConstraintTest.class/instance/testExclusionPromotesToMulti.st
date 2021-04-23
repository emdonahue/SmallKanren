tests
testExclusionPromotesToMulti
	self skip.
	self
		assert: (((x excludes: 2) run: (x =/= 1 run: SKState new)) constraints at: x)
		equals:
			((x =/= 1) asConstraint &
				 (y excludes: 2) asConstraint )