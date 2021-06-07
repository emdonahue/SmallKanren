checking
fire: aValue in: aState
	<type: #(NotC SKVar) type: #SKPackage returns: #SKPackage>
	"Primary entry point into constraint-specific checking code. Applied to fire constraint when constructed by goals, or when triggered by unification. Should check consistency of Substitution and either fail or modify the constraint store appropriately. May return an arbitrary stream, as in the case of lazy fresh."
	self subclassResponsibility.