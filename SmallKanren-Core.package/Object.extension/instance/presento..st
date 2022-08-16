*SmallKanren-Core
presento: aTerm
	^ (SKSubstitution new unify: self noWalk: aTerm) asPresentoGoal.