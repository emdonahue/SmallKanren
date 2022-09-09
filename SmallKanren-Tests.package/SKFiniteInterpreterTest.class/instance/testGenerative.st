generative
testGenerative
	self timeLimit: 30 asDuration.
	interpreter vars: #(x y).
	^ [ :prog :out | interpreter eval: prog o: out ] asGoal runList
		inject: 0
		into: [ :testsCount :testcase | 
			self assert: testcase first evalsTo: testcase second.
			testsCount + 1 ]