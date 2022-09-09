fresh
testRecursiveFreshGoal
	| loop |
	loop := [ SKGoal succeed | loop ].
	self
		assert: (loop asGoal runList take: 3)
		equals: #(#() #() #()) asConsR