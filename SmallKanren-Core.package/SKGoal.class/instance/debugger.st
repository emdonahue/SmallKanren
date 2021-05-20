running
debugger 	
	"Represents a top-level debugger, as goal debuggers within a debugging session will be generated from existing states and runtimes."
	^ SKGoalDebugger goal: self state: SKState new runtime: SKRuntime new.