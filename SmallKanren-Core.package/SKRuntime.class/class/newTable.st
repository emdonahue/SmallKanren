running
newTable
	"Create a new collection of tables."
	^ PluggableDictionary new 
			hashBlock: [ :a | a skAlphaHash ]; 
			equalBlock: [ :a :b | a skAlphaEquals: b ].