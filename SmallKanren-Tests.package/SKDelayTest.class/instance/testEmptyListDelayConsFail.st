cons-ground
testEmptyListDelayConsFail
	"Like non-lists, empty lists fail delay."

	| s |
	s := (Cons empty carCdrIn: [ :a :d | SKGoal succeed ]) run: SKState new.
	self assert: s isFailure