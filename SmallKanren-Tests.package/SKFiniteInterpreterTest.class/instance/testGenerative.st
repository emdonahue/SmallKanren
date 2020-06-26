generative
testGenerative

	interpreter vars: #(x y).
	^ [ :prog :out | interpreter eval: prog o: out ] asGoal run
		inject: 0
		into: [ :testsCount :testcase | 
			self assert: testcase first evalsTo: testcase second.
			testsCount + 1 ]