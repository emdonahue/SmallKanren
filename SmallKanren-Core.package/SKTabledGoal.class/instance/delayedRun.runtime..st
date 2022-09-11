running
delayedRun: aState runtime: aRunner
	<type: #SKPackage type: #SKRuntime type: #SKStream>
	"Reflected back from state when ready to table (ensures it is not a delayed state, which must delay until it becomes a pure state before tabling itself."
	| cacheKey |
	"Cached streams are indexed by reifications of the input vars."
	cacheKey := aState reify: inputs.
	^ aRunner table: tableName inputs: cacheKey outputs: cacheKey, (aState reify: outputs) run: aState in: block.