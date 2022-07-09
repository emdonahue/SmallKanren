running
tabledRun: aState runtime: aRunner
	<type: #SKPackage type: #SKRuntime returns: #SKStream>
	"Reflected back from state when ready to table (ensures it is not a delayed state, which must delay until it becomes a pure state before tabling itself."
	| cacheKey |
	"Cached streams are indexed by reifications of the input vars."
	cacheKey := aState reify: inputs.
	^ aRunner table: tableName cacheKey: cacheKey outputs: cacheKey, outputs run: aState in: block.