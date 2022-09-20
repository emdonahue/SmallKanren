*SmallKanren-Core
=/= aVar
	<todo> "Make this use a standard list based substitution to avoid unnecessarily large expansions of SBRAL."
	^ (SKSubstitution empty asDisequalitySubstitution unify: self noWalk: aVar) asDisequalityGoal.