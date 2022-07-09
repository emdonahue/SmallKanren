tabling
table: tableName inputs: inputVars outputs: outputVars pseudocounts: pseudoCounts runtime: aSKRuntime
	"Table the state, and then use the returned runtime for tabling the rest of the stream, mplusing the state onto the stream."
	^ (left
		   table: tableName
		   inputs: inputVars
		   outputs: outputVars
		   pseudocounts: pseudoCounts
		   runtime: aSKRuntime)
		  complete: right
		  table: tableName
		  inputs: inputVars
		  outputs: outputVars
		  pseudocounts: pseudoCounts
		  runtime: aSKRuntime