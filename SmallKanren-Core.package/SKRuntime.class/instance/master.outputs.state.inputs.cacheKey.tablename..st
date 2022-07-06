tabling
master: goalBlock outputs: outputVars state: aState inputs: inputVars cacheKey: aCacheKey tablename: aTableName
	"Strip pseudocounts from state since other branches will entel this tabling call with other pseudocount histories. Recombine the pseudocounts as states emerge from the master stream."
	"Suspend delayed goals so they dont affect the tabled values and recover them on return?"
	<todo>
	^ ((goalBlock valueWithArguments: outputVars) 
		asGoal run: aState stripPseudocounts runtime: self)
			table: aTableName
			inputCacheKey: aCacheKey
			inputs: inputVars
			cacheKey: (aState reify: inputVars)
			state: aState.