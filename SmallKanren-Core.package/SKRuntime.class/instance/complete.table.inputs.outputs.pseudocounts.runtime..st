tabling
complete: aStream table: tableName inputs: cacheKey outputs: inputVars pseudocounts: pseudoCounts runtime: aRuntime
	"Called by complete after having consumed the state (in this runtime) to table the rest of the stream."
	^ stream + (aStream table: tableName inputs: cacheKey outputs: inputVars pseudocounts: pseudoCounts runtime: self) 
		runtime: self.