tabling
reuseInputs: inputVars outputs: outputVars table: tableName state: aState
	"Called on second and subsequent calls to a tabled goal to reuse cached answers."	
	^ SKReusedStream table: tableName inputs: inputVars outputs: outputVars state: aState.