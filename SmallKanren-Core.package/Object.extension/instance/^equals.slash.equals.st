*SmallKanren-Core
=/= aVar
	"^ aVar skDisunifyPrim: self"
	^ (SKSubstitution empty disunify: self with: aVar) asDisequality asGoal.