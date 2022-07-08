streaming-mplus
plus: aStream bind: aGoal runtime: aRuntime
	"MPlus, run the goal separately but use the latest most runtime for tables."
	^ stream + (aStream bind: aGoal runtime: self) runtime: self.