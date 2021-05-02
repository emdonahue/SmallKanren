checking
check: aValue in: aState
	<todo> "May be superceded by check:against:in"
	"Primary entry point into constraint-specific checking code. Applied to fire constraint when constructed by goals, or when triggered by unification. Should check consistency of Substitution and either fail or modify the constraint store appropriately."
	^ self checkAgainst: aValue in: aState.