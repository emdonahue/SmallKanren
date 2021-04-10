extending
extend: aVar noOccursCheck: aVal
	"Without occurs check, failure is impossible so just extend the substitution."
	^ self atKey: aVar put: aVal.