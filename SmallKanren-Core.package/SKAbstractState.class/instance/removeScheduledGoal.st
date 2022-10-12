scheduling
removeScheduledGoal
	"If we had high priority goals with no dependencies, just remove them."
	(self schedule select: #hasExternalDependencies) ifNotEmpty: [ :s | ^ self schedule: s ].
	"Otherwise pick the next thing and remove its dependencies."
	^ self schedule: (self schedule first removeDependencies: self schedule rest).