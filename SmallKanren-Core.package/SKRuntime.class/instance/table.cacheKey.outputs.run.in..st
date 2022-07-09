tabling
table: tableName cacheKey: cacheKey outputs: outputVars run: aState in: goalBlock

	"Called from TabledGoal to perform tabling on a pure state."

	<type: #Symbol type: #Cons type: #Cons type: #Cons type: #SKState
	returns: #String>
	"If the cache already exists, this is a consumer call."
	tables at: tableName ifPresent: [ :t | 
		t at: outputVars ifPresent: [ :c | 
			^ (self
				   reuse: outputVars
				   table: tableName
				   cacheKey: outputVars
				   state: aState) runtime: self ] ].
	"Otherwise, it is a producer call."
	^ self
		  master: goalBlock
		  outputs: outputVars
		  state: aState
		  cacheKey: cacheKey
		  tablename: tableName