*SmallKanren-Core
asGoal
	"Blocks are considered LazyGoals in case they represent infinite recursion."

	^ SKLazyGoal new block: self