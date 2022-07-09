tabling
table: tableName inputs: inputVars outputs: outputVars run: aState in: goalBlock

	"Called from TabledGoal to perform tabling on a pure state."

	<type: #Symbol type: #Cons type: #Cons type: #Cons type: #SKState
	returns: #String>
	| cacheKey |
	cacheKey := aState reify: inputVars. "Cached streams are indexed by reifications of the input vars."
	"If the cache already exists, this is a consumer call."
	tables at: tableName ifPresent: [ :t | 
		t at: cacheKey ifPresent: [ :c | 
			^ (self
				   reuse: cacheKey, outputVars
				   table: tableName
				   cacheKey: cacheKey
				   state: aState) runtime: self ] ].
	"Otherwise, it is a producer call."
	^ self
		  master: goalBlock
		  outputs: cacheKey, outputVars
		  state: aState
		  cacheKey: cacheKey
		  tablename: tableName