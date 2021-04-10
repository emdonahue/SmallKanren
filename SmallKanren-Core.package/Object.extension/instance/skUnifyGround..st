*SmallKanren-Core
skUnifyGround: aVal
	"Both terms are ground on attempted unification, so perform preepmtive fully ground unification right now before even creating unification goal."
	^ self = aVal ifTrue: SKGoal succeed ifFalse: SKGoal fail