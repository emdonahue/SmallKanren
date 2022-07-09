tabling
table: tableName cacheKey: cacheKey outputs: inputVars pseudocounts: pseudoCounts runtime: aSKRuntime
	"Table the state, and then use the returned runtime for tabling the rest of the stream, mplusing the state onto the stream."
	^ (left
		   table: tableName
		   cacheKey: cacheKey
		   outputs: inputVars
		   pseudocounts: pseudoCounts
		   runtime: aSKRuntime)
		  complete: right
		  table: tableName
		  cacheKey: cacheKey
		  inputs: inputVars
		  pseudocounts: pseudoCounts
		  runtime: aSKRuntime