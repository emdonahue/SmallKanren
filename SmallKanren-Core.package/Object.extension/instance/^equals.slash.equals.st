*SmallKanren-Core
=/= aVar
	"^ aVar skDisunifyPrim: self"
	^ (SKSubstitution empty unify: self noWalk: aVar) asDisequality asGoal.