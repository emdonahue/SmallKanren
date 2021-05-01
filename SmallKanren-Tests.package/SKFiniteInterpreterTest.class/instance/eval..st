generative
eval: prog
	
	^ (prog
		inject: SKGoal succeed
		into: [ :g :line | g & (self evalLine: line) ]) runtime.