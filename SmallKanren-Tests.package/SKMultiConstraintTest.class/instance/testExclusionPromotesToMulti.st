tests
testExclusionPromotesToMulti
	self skip.
	self
		assert: (((x absento: 2) run: (x =/= 1 run: SKState new)) constraints at: x)
		equals:
			((x =/= 1) asConstraint &
				 (y absento: 2) asConstraint )