tabling
table: tableName inputs: inputVars outputs: outputVars run: aState in: goalBlock

	"Called from TabledGoal to perform tabling on a pure state."

	"If the cache already exists, this is a consumer call."

	<type: #Symbol type: #Cons type: #Cons type: #Cons type: #SKState
	returns: #String>
	tables at: tableName ifPresent: [ :t | 
		t at: outputVars ifPresent: [ :cache | 
			cache isFailure ifTrue: [ ^ SKStream failure ]. "If no answers at all, just fail."
			^ (self
				   reuseInputs: outputVars
				   outputs: outputVars
				   table: tableName
				   cache: cache
				   state: aState) runtime: self ] ].
	"Otherwise, it is a producer call."
	^ self
		  masterInputs: inputVars
		  outputs: outputVars
		  goal: goalBlock
		  state: aState
		  tablename: tableName