tabling
master: goalBlock args: outputVars state: aState key: aKey cacheKey: aCacheKey tablename: aTableName
	"instead of copying, this whole system should be based on a single tabled-stream producing call"
	"Strip pseudocounts from state since other branches will entel this tabling call with other pseudocount histories. Recombine the pseudocounts as states emerge from the master stream."
	"Suspend delayed goals so they dont affect the tabled values and recover them on return?"
	<todo>
	^ ((goalBlock valueWithArguments: outputVars) run: aState tabledClose runtime: self)
		table: aTableName
		inputCacheKey: aCacheKey
		inputs: aKey
		cacheKey: (aState reify: aKey)
		state: aState.