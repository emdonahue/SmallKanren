constructor
table: tableName inputs: inputVars outputs: outputVars state: aState
	^ self new
		table: tableName;
		cache: inputVars;
		outputs: outputVars;
		state: aState.