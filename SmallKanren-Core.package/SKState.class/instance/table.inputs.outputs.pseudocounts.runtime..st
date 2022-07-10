tabling
table: tableName inputs: cacheKey outputs: outputVars pseudocounts: pseudoCounts runtime: aSKRuntime
	"Actually extends the table with the values represented in the current state. aState is the input state and its pseudocounts must be averaged with the current, output state."
	<todo> "Does not require full unifier. Subunify should do. (defined on diss page 182)" "answer called twice"
	| cache table |
	table := aSKRuntime tables at: tableName. "Can't be absent because created when master is called."
	cache := table at: outputVars.
	
	"If something in the cache unifies with the potential return vals, we have produced this answer before, so fail."
	(cache entries allSatisfy: [ :e | (self answer unify: (e argv take: cacheKey size) with: cacheKey) isFailure ])
		ifFalse: [ ^ SKStream failure ].
		
	"Otherwise, cache the answer and continue."
	^ (self averagePseudoCounts: pseudoCounts) 
		runtime: (aSKRuntime copy tables: (aSKRuntime tables copy at: tableName put: (
			table copy at: outputVars put: (cache add: 
				(SKTableCacheEntry new argv: (self answer reify: outputVars); 
				pseudoCounts: self pseudoCounts)); yourself
			 ); yourself)).