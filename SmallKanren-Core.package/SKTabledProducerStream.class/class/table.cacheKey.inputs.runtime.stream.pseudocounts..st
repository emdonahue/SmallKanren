constructor
table: tableName cacheKey: cacheKey inputs: inputVars runtime: aRuntime stream: aStream pseudocounts: pseudoCounts
	"Stream is the computation that produces answers for us to cache. aState is the state when the master table was first created, which is needed to aver	age in the pseudocounts for states returned from the master branch."
	<todo> "Do we need to save the whole state or just the pseudocounts?"
	^ (self new
		tableName: tableName;
		inputVars: inputVars;
		cacheKey: cacheKey;
		pseudocounts: pseudoCounts;
		stream: aStream) runtime: aRuntime.