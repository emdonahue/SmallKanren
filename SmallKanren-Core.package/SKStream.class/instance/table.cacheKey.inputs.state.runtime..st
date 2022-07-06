tabling
table: tableName cacheKey: cacheKey inputs: inputVars state: aSKState runtime: aSKRuntime

	"Produce a tabled stream to consume answers from this stream and table them."

	^ SKTabledProducerStream
		  table: tableName
		  cacheKey: cacheKey
		  inputs: inputVars
		  runtime: aSKRuntime
		  stream: self
		  state: aSKState