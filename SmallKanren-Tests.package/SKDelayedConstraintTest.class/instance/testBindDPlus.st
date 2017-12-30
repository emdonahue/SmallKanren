mplus
testBindDPlus
	"MPlusses containing delays distribute to their children?"
	self assert: ((x carCdrIn: [ :a :d | a === 1 ]) | (y carCdrIn: [ :a :d | a === 2 ]) & (x === 1 cons)) step isComplete