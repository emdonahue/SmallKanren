scheduling
delayedBind: aGoal runtime: aRunner
	"Used to delay goals until there is a pure state to run on (avoids being scheduled). Calls back polymorphically so that scheduled states can delay until they are pure states and then table themselves. Used by tabling and aggregation to create a boundary between the external goals and the subgoals."
	^ aGoal delayedRun: self runtime: aRunner