running
tabledRun: aState runtime: aRunner
	<type: #SKPackage type: #SKRuntime returns: #SKStream>
	"Reflected back from state when ready to table (ensures it is not a delayed state, which must delay until it becomes a pure state before tabling itself."
	^ aRunner table: tableName inputs: inputs outputs: outputs run: aState in: block.