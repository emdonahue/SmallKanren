tabling
table: aString cacheKey: cacheKey inputs: inputVars state: aSKState
	"Called on the runtime holding the result of a master table call to create the tabled producer."
	^ stream
		table: aString
		cacheKey: cacheKey
		inputs: inputVars
		state: aSKState
		runtime: self