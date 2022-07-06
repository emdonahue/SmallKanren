tabling
table: tableName cacheKey: cacheKey inputs: inputVars pseudocounts: pseudoCounts runtime: aSKRuntime
	"Produce a tabled stream to consume answers from this stream and table them."

	^ SKTabledProducerStream
		  table: tableName
		  cacheKey: cacheKey
		  inputs: inputVars
		  runtime: aSKRuntime
		  stream: self
		  pseudocounts: pseudoCounts