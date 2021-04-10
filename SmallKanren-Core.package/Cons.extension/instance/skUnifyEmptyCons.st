*SmallKanren-Core
skUnifyEmptyCons
	"Since Cons is lazy, we can't just implement this polymorphically on Cons and EmptyCons, as we don't necessarily know until we consume the laziness which it is."
	^ self ifEmpty: SKGoal succeed ifNotEmpty: [ SKGoal fail ] 