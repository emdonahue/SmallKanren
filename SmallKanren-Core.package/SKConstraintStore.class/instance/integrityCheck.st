debugging
integrityCheck
	"A debug-time test that ensures that no trivial constraints have made it into the store."
	
	^ hashmap values allSatisfy: [ :v | v isSatisfied not & v isUnsatisfiable not ].