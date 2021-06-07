tabling
tabledBind: aGoal runner: aRunner
	"A TabledGoal cannot run immediately on a ScheduledState because we have not yet run all the conjunctions that may ground the terms we need to reify as a key."
	
	^ SKBind new goal: aGoal; stream: self

	