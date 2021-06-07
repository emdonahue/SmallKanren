mplus
testBindDPlus
	"MPlusses containing delays distribute to their children?"
	self assert: ((x carCdro: [ :a :d | a === 1 ]) | (y carCdro: [ :a :d | a === 2 ]) & (x === 1 cons)) step isComplete