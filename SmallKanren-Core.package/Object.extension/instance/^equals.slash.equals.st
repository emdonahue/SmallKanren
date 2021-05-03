*SmallKanren-Core
=/= aVar
	^ (SKSubstitution empty unify: self noWalk: aVar) asDisequalityGoal.