extending
extend: aVar occursCheck: aVal
	<type: #SKVar type: #ObjectC type: #(OrC #SKSubstitution SKFailure)>
	"Extends the substitution after passing an occurs check. If the occurs check fails, return a failure."

	^ (aVal skOccurs: aVar in: self) extend: aVar noOccursCheck: aVal