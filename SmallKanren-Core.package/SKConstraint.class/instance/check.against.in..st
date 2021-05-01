checking
check: aVar against: aVal in: aState
	<todo> "free vars should never make it this far: they should trigger an automatic merge and maybe give constraints a separate option to fail if they really want to."
	"Primary entry point into constraint-specific checking code. Applied to fire constraint when constructed by goals, or when triggered by unification. Should check consistency of Substitution and either fail or modify the constraint store appropriately. For constraints that don't need to know what var they are bound to, pass to a simplified check:in:"
	^ self checkAgainst: aVal in: aState