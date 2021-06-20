constraining
check: aVar against: aValue
	<todo> "We may need more specialized substitutions, so make disequalities start with disequalitysubs from the beginning, condition on whether they hold a satisfied constraint, and remove this hack."
	"Normally, State handles constraint checking. If we receive a constraint checking call, we must be inside a disequality constraint that operates directly on the substitution. Hence, we create a SubstitutionDelta that tracks new bindings for use in disequality constraints."
	
	^ SKDisequalitySubstitution new
		substitution: self;
		var: aVar;
		val: aValue.