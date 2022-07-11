constructor
table: tableName inputs: inputVars outputs: outputVars state: aState cache: aCache
	^ self new
		table: tableName;
		cacheKey: inputVars;
		cache: aCache;
		outputs: outputVars;
		state: aState.