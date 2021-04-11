checking
check: aValue in: aState
	"Applied to fire constraint when constructed by goals, or when triggered by unification. Should check consistency of Substitution and either fail or modify the constraint store appropriately."
	self subclassResponsibility