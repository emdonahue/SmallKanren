fresh
testRecursiveFreshGoal
	| loop |
	loop := [ SKGoal succeed | loop ].
	self
		assert: (loop asGoal run take: 3)
		equals: #(#() #() #()) asConsTree