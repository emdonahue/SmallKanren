constructor
table: tableName cacheKey: cacheKey inputs: inputVars runtime: aRuntime stream: aStream state: aState
	"Stream is the computation that produces answers for us to cache. aState is the state when the master table was first created, which is needed to average in the pseudocounts for states returned from the master branch."
	<todo> "Do we need to save the whole state or just the pseudocounts?"
	^ (self new
		tableName: tableName;
		inputVars: inputVars;
		cacheKey: cacheKey;
		state: aState;
		stream: aStream) runtime: aRuntime.