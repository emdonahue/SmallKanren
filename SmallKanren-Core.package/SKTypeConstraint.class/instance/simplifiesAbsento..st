simplifying
simplifiesAbsento: aVal
	"If there is ever a type constraint that allows Cons, it should override this and return false."
	^ (self isOfType: aVal) not.