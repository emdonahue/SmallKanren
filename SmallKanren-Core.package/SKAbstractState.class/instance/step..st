streaming
step: aRuntime
	self schedule ifEmpty: [ ^ SKStream failure ]. "Substitution case, mostly for debugging."
	
	"If any goals have no dependencies, run them as top priority."
	(self schedule select: #hasPriority) ifNotEmpty: [ :s |
		(s inject: SKGoal succeed into: [ :gs :g | gs & g expandFresh ifFail: [ ^ SKStream failure ]])
			run: (self schedule: (self schedule reject: #hasPriority)) runtime: aRuntime].
	
	"If we have to commit to a goal, commit to its dependencies."
	^ self schedule first expandFresh 
		run: (self schedule: (self schedule first removeDependencies: self schedule rest))
		runtime: aRuntime.