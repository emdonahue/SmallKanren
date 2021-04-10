*SmallKanren-Core
=== aVar
	"If Var is already ground, we can shortcircuit the unification goal and just perform the ground unification now."
	^ aVar skUnifyGround: self