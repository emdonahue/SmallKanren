streaming-mplus
plus: aStream bind: aGoal runtime: aRuntime
	"MPlus, run the goal separately but use the latest most runtime for tables."
	^ self + (aStream bind: aGoal runtime: aRuntime).