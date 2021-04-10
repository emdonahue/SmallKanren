*SmallKanren-Core
skUnifyEmptyCons
	"For non-Cons (primitive and Var), unification with Cons is the same as any ground."
	^ self skUnifyGround: Cons empty.