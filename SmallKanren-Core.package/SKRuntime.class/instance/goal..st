initialization
goal: goal
"Executes the goal and stores the resulting stream in this runner. This is called once on creation of the runner to execute the top level goal (always a fresh, if the code is written by the end user, but may be any goal if we are generating the goal programmatically or testing our code)."
	self stream: (goal run: SKState new runtime: self)