tests
testMPlusFair

	self assert: ({x===1&(x===2)} conde isKindOf: SKAnd).
	self assert: {x===1&(x===2)} conde step equals: SKStream failure.
	self assert: {x===1&(x===2). x===1&(x===2)} conde step equals: SKStream failure.
	self assert: ({x===1&(x===2). x===1} conde step isKindOf: SKState).
	self assert: ({x===1. x===1. x===1} conde step isKindOf: SKMPlusFair).
	self assert: ([ :a | {a===1. a===2. a===3} conde ] asGoal run) equals: (1 cons cons: 2 cons cons: 3 cons cons).
	self assert: ([ :a | {a===1. a===2. a===3} conde | {a===1. a===2. a===3} conde ] asGoal run) equals: (1 cons cons: 1 cons cons: 2 cons cons: (2 cons cons: 3 cons cons: 3 cons cons)).
	self assert: ([ :a :b | b===4 & {a===1. a===2. a===3} conde ] asGoal run) equals: ((1 cons: 4 cons) cons: (2 cons: 4 cons) cons: (3 cons: 4 cons) cons).
	self assert: ([ :a :b | {a===1. a===2. a===3} conde & (b===4) ] asGoal run) equals: ((1 cons: 4 cons) cons: (2 cons: 4 cons) cons: (3 cons: 4 cons) cons).
	self assert: [ :a | 
		{repeato value: a value: 1 value: 10.
			repeato value: a value: 2 value: 10.
			repeato value: a value: 3 value: 10 } conde ] asGoal run force equals: 
		((Cons naturals take: 30) collect: [ :b | (b-1%3+1) cons ]) force.
		