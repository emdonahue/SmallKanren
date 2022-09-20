disunifying
disunify: aSubstitution
	<type:#(OrC SKSubstitution SKDisequalitySubstitution) type: #(OrC SKSubstitution SKDisequalitySubstitution SKFailure)>
	"Perform a normal unification. Substitutions know that if they get a call to unify directly, it is from the disequality constraint, as State handles unification at a higher level. Return the substitution and let it apply constraints."
	^ aSubstitution unify: var with: val