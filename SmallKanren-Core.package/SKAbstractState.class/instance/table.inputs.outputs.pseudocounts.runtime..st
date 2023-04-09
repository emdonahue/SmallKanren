tabling
table: tableName inputs: inputVars outputs: outputVars pseudocounts: pseudoCounts runtime: aRuntime
	
	self hasSchedule ifTrue: [ "Guarded streams have not yet finished unifying all the values we will need to put into the table, so suspend tabling while they finish."
		^ super table: tableName inputs: inputVars outputs: outputVars pseudocounts: pseudoCounts runtime: aRuntime ].

	^ (self extendTable: tableName inputs: inputVars outputs: outputVars pseudocounts: pseudoCounts runtime: aRuntime)
		  closeTable: tableName cache: outputVars runtime: aRuntime