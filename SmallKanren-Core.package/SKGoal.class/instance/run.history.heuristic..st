running
run: aState history: aHistory heuristic: aHeuristic
	"This is the primary interface to begin the execution of a Goal. This default method handles simple goals (and conjunctions of simple goals) by executing the simpler #run: method and scoring the resultant State that those Goals are guaranteed to return. Composite goals that may not return a simple state will override this method to control execution of their subgoals."
	self subclassResponsibility