tabling
table: tableName inputs: inputVars outputs: outputVars run: aState in: goalBlock
	<type: #Symbol type: #Cons type: #Cons type: #Cons type: #SKState returns: #String>
	"Called from TabledGoal to perform tabling on a pure state."
	"Can we reify the argVars /before/ passing to either reuse or master?"

	"a faster dictionary should be doable"

	<todo>
	| cacheKey |
	cacheKey := aState reify: inputVars. "Cached streams are indexed by reifications of the input vars."
	"If the cache already exists, this is a consumer call."
	tables at: tableName ifPresent: [ :t | 
		t at: cacheKey ifPresent: [ :c | 
			self halt.
			^ self reuse: outputVars cache: c state: aState ]].
	"Otherwise, it is a producer call."
	^ self master: goalBlock outputs: outputVars state: aState inputs: inputVars cacheKey: cacheKey tablename: tableName.