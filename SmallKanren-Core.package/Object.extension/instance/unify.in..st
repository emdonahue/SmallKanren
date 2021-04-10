*SmallKanren-Core
unify: aValue in: aSub
	"Unify a ground value at the top level of unification. Pass to the next level telling it that we are ground."
	^ aValue skUnifyGround: self in: aSub