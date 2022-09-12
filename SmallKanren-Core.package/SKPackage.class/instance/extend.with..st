extending
extend: aVar with: aVal
	<type: #SKVar type: #VoidC type: #(OrC SKPackage SKFailure)>
	"Occurs check may fail, in which case return a failure. Otherwise, return an extended state."
	^  (substitution extend: aVar with: aVal) extendState: self