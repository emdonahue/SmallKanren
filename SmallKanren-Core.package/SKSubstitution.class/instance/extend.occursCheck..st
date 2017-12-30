extending
extend: aVar occursCheck: aVal
	"Extends the substitution after passing an occurs check."

	^ (aVal skOccurs: aVar in: self) extend: aVar noOccursCheck: aVal