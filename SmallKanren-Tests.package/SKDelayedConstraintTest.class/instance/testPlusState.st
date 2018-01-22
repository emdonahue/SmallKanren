streaming
testPlusState
	"State supercedes a delay in a complete stream, and delay is not fired until needed later (these delays would be errors)."

	self assert: (SKSucceed singleton | (x carCdrIn: [ :a :d |  ])) step isComplete.
	self assert: (SKSucceed singleton | (x carCdrIn: [ :a :d |  ])) step rest isDelayed.
	self assert: ((x carCdrIn: [ :a :d |  ]) | SKSucceed singleton) step isComplete.
	self assert: ((x carCdrIn: [ :a :d |  ]) | SKSucceed singleton) step rest isDelayed