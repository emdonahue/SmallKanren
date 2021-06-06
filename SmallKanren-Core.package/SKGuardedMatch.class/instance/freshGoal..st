laziness
freshGoal: aPattern
	"Since the disjoined goal's free variables have been used in the substitution, extract those variables using this clause's pattern and build a fresh goal with those."
	^ self expandBlockWithVars: 
		(((SKSubstitution empty unify: pattern with: aPattern) 
				ifFailure: [ ^ SKGoal fail ]) 
			reify: vars).
	