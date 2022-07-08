tabling
table: tableName cacheKey: cacheKey outputs: inputVars pseudocounts: pseudoCounts runtime: aSKRuntime

	"Produce a tabled stream to consume answers from this stream and table them."

	^ SKTabledProducerStream
		  table: tableName
		  cacheKey: cacheKey
		  outputs: inputVars
		  stream: self
		  pseudocounts: pseudoCounts