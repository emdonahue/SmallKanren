streams
plus: aGoal state: aState
	"MPlus, run the goal separately but use the latest most runtime for tables."
	| runtime |
	runtime := aGoal run: aState runtime: self.
	^ (stream + runtime stream) runtime: runtime.