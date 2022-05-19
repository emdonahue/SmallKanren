tests
testNormalExpectation	
	self assert: ((SKNormalEstimate new mean: 0 ln; std: 1 ln) logLikelihood: 0) exp closeTo: 0.39894 precision: 0.001.
	self assert: ((SKNormalEstimate new mean: 0	 ln; std: 1 ln) logLikelihood: 1	) exp closeTo: 0.24197 precision: 0.001.
	self assert: ((SKNormalEstimate new mean: 0	 ln; std: 2 ln) logLikelihood: 0) exp closeTo: 0.19947 precision: 0.001.
	self assert: ((SKNormalEstimate new mean: 1	 ln; std: 1 ln) logLikelihood: 0) exp closeTo: 0.24197 precision: 0.001.
	self assert: ((SKNormalEstimate new mean: 1	 ln;	 std: 2 ln) logLikelihood: 0) exp closeTo: 0.17603 precision: 0.001.