streaming
testPlusState
	"State supercedes a delay in a complete stream, and delay is not fired until needed later (these delays would be errors)."

	self assert: (SKSuccess singleton | (x carCdrIn: [ :a :d |  ])) step isComplete.
	self assert: (SKSuccess singleton | (x carCdrIn: [ :a :d |  ])) step rest isDelayed.
	self assert: ((x carCdrIn: [ :a :d |  ]) | SKSuccess singleton) step isComplete.
	self assert: ((x carCdrIn: [ :a :d |  ]) | SKSuccess singleton) step rest isDelayed