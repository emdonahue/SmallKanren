tabling
master: goalBlock outputs: outputVars state: aState inputs: inputVars cacheKey: cacheKey tablename: tableName

	"Strip pseudocounts from state since other branches will entel this tabling call with other pseudocount histories. Recombine the pseudocounts as states emerge from the master stream."

	"Suspend delayed goals so they dont affect the tabled values and recover them on return?"

	<todo>
	"Create the cache. Table may already exist."
	| table r |
	table := tables at: tableName ifAbsent: [ PluggableDictionary new 
			hashBlock: [ :a | a skAlphaHash ]; 
			equalBlock: [ :a :b | a skAlphaEquals: b ]].
	r := self copy tables: (tables copy at: tableName put: 
		(table copy at: cacheKey put: Cons empty; yourself); yourself).
		
	^ (((goalBlock valueWithArguments: outputVars) asGoal
		   run: aState stripPseudocounts
		   runtime: r)
		  table: tableName
		  cacheKey: cacheKey
		  outputs: outputVars
		  pseudocounts: aState pseudoCounts
			runtime: r)
				runtime: r.