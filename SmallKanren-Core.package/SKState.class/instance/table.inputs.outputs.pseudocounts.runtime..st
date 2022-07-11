tabling
table: tableName inputs: inputVars outputs: outputVars pseudocounts: pseudoCounts runtime: aRuntime

	^ (self
		   extendTable: tableName
		   inputs: inputVars
		   outputs: outputVars
		   pseudocounts: pseudoCounts
		   runtime: aRuntime)
		  closeTable: tableName
		  cache: outputVars
		  runtime: aRuntime