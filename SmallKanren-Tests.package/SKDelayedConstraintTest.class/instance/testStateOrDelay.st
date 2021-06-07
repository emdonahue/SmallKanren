mplus
testStateOrDelay
	"Delays with states form completes."
	self assert: (x === 1 | (x carCdro: [ :a :d | a === 1 & (d === 2) ])) step isComplete.
	self assert: ((x carCdro: [ :a :d | a === 1 & (d === 2) ]) | (x === 1)) step isComplete