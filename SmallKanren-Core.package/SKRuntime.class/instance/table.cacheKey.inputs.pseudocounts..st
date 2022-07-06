tabling
table: aString cacheKey: cacheKey inputs: inputVars pseudocounts: pseudoCounts
	"Called on the runtime holding the result of a master table call to create the tabled producer."
	^ stream
		table: aString
		cacheKey: cacheKey
		inputs: inputVars
		pseudocounts: pseudoCounts
		runtime: self