tabling
table: aString inputs: inputVars outputs: outputVars pseudocounts: pseudoCounts runtime: aRuntime
	"Called on the runtime holding the result of a master table call to create the tabled producer. Ignore aRuntime since we are a more recent runtime."
	^ (stream
		table: aString
		inputs: inputVars
		outputs: outputVars
		pseudocounts: pseudoCounts
		runtime: self) runtime: self.