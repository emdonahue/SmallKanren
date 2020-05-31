generative
testGenerative
	self skip.
	[ :prog :out | interpreter eval: prog o: out ] asGoal run
		do: [ :testcase | self assert: testcase first evalsTo: testcase second ]