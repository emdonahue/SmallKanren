tabling
masterInputs: inputVars outputs: outputVars goal: goalBlock state: aState tablename: tableName

	"Strip pseudocounts from state since other branches will entel this tabling call with other pseudocount histories. Recombine the pseudocounts as states emerge from the master stream."

	"Suspend delayed goals so they dont affect the tabled values and recover them on return?"

	<todo>
	"Create the cache. Table may already exist."
	| table r |
	table := tables at: tableName ifAbsent: [ self class newTable ].
	r := self copy tables: (tables copy at: tableName put: 
		(table copy at: outputVars put: SKTableCache new; yourself); yourself).
		
	^ (((goalBlock valueWithArguments: outputVars) asGoal
		   run: aState stripPseudocounts
		   runtime: r)
		  table: tableName
		  inputs: inputVars
		  outputs: outputVars
		  pseudocounts: aState pseudocounts
			runtime: r)
				runtime: r.