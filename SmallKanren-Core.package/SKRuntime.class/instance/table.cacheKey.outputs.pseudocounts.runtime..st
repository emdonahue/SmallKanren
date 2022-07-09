tabling
table: aString cacheKey: cacheKey outputs: inputVars pseudocounts: pseudoCounts runtime: aRuntime
	"Called on the runtime holding the result of a master table call to create the tabled producer. Ignore aRuntime since we are a more recent runtime."
	^ (stream
		table: aString
		cacheKey: cacheKey
		outputs: inputVars
		pseudocounts: pseudoCounts
		runtime: self) runtime: self.