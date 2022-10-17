streaming
step: aRuntime
	self schedule ifEmpty: [ ^ SKStream failure ]. "Substitution case, mostly for debugging."
	
	"Check for high priority goals and run them first."
	self run: SKGoal succeed schedule: self schedule runtime: aRuntime ifPriority: [ :s | ^ s ].
	
	"If no high priority goals, promote the first goal to high priority."
	^ self run: self schedule first expandFresh 
		schedule: (self schedule first removeDependencies: self schedule rest)
		runtime: aRuntime
		ifPriority: [ :s | ^ s ].