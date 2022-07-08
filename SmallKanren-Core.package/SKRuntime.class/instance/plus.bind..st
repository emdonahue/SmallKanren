streaming-mplus
plus: aStream bind: aGoal
	"MPlus, run the goal separately but use the latest most runtime for tables."
	| runtime |
	runtime := aStream bind: aGoal runtime: self.
	^ (stream + runtime stream) runtime: runtime.