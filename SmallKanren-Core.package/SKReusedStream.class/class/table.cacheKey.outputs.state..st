constructor
table: tableName cacheKey: cacheKey outputs: outputVars state: aState
	^ self new
		table: tableName;
		cache: cacheKey;
		outputs: outputVars;
		state: aState.