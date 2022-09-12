extending
extend: aVar noOccursCheck: aVal
	<type: #SKVar type: #VoidC type: #SKPackage>
	"As occurs check is the only way for a substitution extension to fail, always returns an extended state."
	^ (substitution extend: aVar noOccursCheck: aVal) extendState: self