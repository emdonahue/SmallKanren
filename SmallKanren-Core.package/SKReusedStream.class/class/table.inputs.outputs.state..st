constructor
table: tableName inputs: inputVars outputs: outputVars state: aState
	^ self new
		table: tableName;
		cacheKey: inputVars;
		outputs: outputVars;
		state: aState.