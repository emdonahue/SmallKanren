instance creation
fromGoal: aGoal
	"Creates a runtime with the stream returned from aGoal as its stream."
	^ self new goal: aGoal.