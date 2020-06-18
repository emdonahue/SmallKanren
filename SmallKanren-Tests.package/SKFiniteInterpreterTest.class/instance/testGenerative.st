generative
testGenerative
	self skip.
	interpreter vars: #(x y).
	[ :prog :out | interpreter eval: prog o: out ] asGoal run
		do: [ :testcase | self assert: testcase first evalsTo: testcase second ]