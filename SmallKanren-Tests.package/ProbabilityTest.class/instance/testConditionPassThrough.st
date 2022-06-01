tests-condition
testConditionPassThrough
	| b st |
	b := SKBernoulli new p: 0.6.
	
	st := [ :o :x | { b marginalize: o o: [ :m | {{m === 0. x === 0}. {m === 1. x === 1}} conde ] } ] asGoal asSpace.
	self assert: st size equals: 2.
	self assert: (st collect: [ :s | s likelihood exp ]) sum equals: 1.
	
st := [ :o :x | { b marginalize: o o: [ :m | {m === 0. {m === 1. x === 1}} conde ] } ] asGoal asSpace.
	self assert: st size equals: 2.
	self assert: (st collect: [ :s | s likelihood exp ]) sum equals: 1.
	
	st := [ :o :x | { b marginalize: o o: [ :m | {{m === 0. x === 0}. m === 1} conde ] } ] asGoal asSpace.
	self assert: st size equals: 2.
	self assert: (st collect: [ :s | s likelihood exp ]) sum equals: 1.
	
st := [ :o :x | { b marginalize: o o: [ :m | {m === 0. m === 1} conde ] } ] asGoal asSpace.
	self assert: st size equals: 1.
	self assert: (st collect: [ :s | s likelihood exp ]) sum equals: 1.