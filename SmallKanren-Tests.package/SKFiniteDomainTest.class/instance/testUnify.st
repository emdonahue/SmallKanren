tests
testUnify
	self assert: (((x finiteDomain: #(1 2)) & (x===1)) run: s runtime: r) isState.
	self assert: (((x===1) & (x finiteDomain: #(1 2))) run: s runtime: r) isState.
	self assert: (((x finiteDomain: #(1 2)) & (x===3)) run: s runtime: r) isFailure.
	self assert: (((x===3) & (x finiteDomain: #(1 2))) run: s runtime: r) isFailure.