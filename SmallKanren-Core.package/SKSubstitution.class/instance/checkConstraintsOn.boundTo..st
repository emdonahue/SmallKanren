constraining
checkConstraintsOn: aVar boundTo: aValue
	"Normally, State handles constraint checking. If we receive a constraint checking call, we must be inside a disequality constraint that operates directly on the substitution. Hence, we create a SubstitutionDelta that tracks new bindings for use in disequality constraints."

	^ SKSubstitutionDelta new
		substitution: (self extend: aVar noOccursCheck: aValue);
		deltas:
			(SKSingleDisequality new
				left: aVar;
				right: aValue)