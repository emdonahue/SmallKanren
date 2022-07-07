tabling
reuse: argVars table: tableName cacheKey: cacheKey state: aState
	"Called on second and subsequent calls to a tabled goal to reuse cached answers."	
	^ SKReusedStream table: tableName cacheKey: cacheKey outputs: argVars state: aState.