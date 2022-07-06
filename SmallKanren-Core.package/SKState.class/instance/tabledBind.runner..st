tabling
tabledBind: aGoal runner: aRunner
	"Called by TabledGoal when run. Calls back polymorphically so that scheduled states can delay until they are pure states and then table themselves."
	^ aGoal tabledRun: self runtime: aRunner