tabling
table: tableName cacheKey: cacheKey inputs: inputVars pseudocounts: pseudoCounts runtime: aSKRuntime
	"Actually extends the table with the values represented in the current state. aState is the input state and its pseudocounts must be averaged with the current, output state."
	<todo> "Does not require full unifier. Subunify should do. (defined on diss page 182)" "answer called twice"
	| cache table |
	table := aSKRuntime tables at: tableName 
		ifAbsent: [ PluggableDictionary new 
			hashBlock: [ :a | a skAlphaHash ]; 
			equalBlock: [ :a :b | a skAlphaEquals: b ]].
		
	cache := table at: cacheKey ifAbsent: [ Cons empty ].
	
	"If something in the cache unifies with the potential return vals, we have produced this answer before, so fail."
	(cache allSatisfy: [ :e | (self answer unify: e argv with: inputVars) isFailure ])
		ifFalse: [ ^ SKStream failure runtime: aSKRuntime ].
		
	"Otherwise, cache the answer and continue."
	^ (self averagePseudoCounts: pseudoCounts) 
		runtime: (aSKRuntime copy tables: (aSKRuntime tables copy at: tableName put: (
			table copy at: cacheKey put: (cache add: 
				(SKTableCacheEntry new argv: (self answer reify: inputVars); 
				pseudoCounts: self pseudoCounts)); yourself
			 ); yourself)).