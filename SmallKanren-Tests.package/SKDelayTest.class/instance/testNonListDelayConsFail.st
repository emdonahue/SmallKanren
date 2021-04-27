cons-ground
testNonListDelayConsFail
	"Non-lists fail delay."

	| s |
	s := (Object new carCdrIn: [ :d | SKGoal succeed ]) run: SKState new.
	self assert: s isFailure