running
debugger 	
	^ SKGoalDebugger goal: self state: SKState new 
		runtime: (SKRuntime new query: self query asCons; stream: SKState new).