running
runtime
	"In practice, this is only called by the top level fresh goal to initialize the entire runner. For testing, it may be useful to have a dummy runner with dummy queryVars (which are obtained from the top level fresh)."

	^ SKRuntime fromGoal: [ self ] asGoal.
