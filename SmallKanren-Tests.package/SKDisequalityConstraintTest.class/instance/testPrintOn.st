tests
testPrintOn
	self assert: (x =/= 1) asConstraint asString equals: '(<x:0>=/=1)'.
	self assert: ((x cons: y cons) =/= (1 cons: 2 cons)) asConstraint asString equals: '((<y:0>=/=2)&(<x:1>=/=1))'.
	self assert: (x =/= 1 , (y =/= 2)) asString equals: '((<y:0>=/=2) | (<x:1>=/=1))'.
	self assert: ((x cons: y cons) =/= (1 cons: 2 cons) , (x =/= 1)) asString equals: '((<x:0>=/=1) | ((<y:1>=/=2)&(<x:0>=/=1)))'.
	self assert: (x =/= 1) asString equals: '<x:0>=/=1'.
	self assert: ((x cons: y cons) =/= (y cons: x cons)) asString equals: '(<x:0> . <y:1>)=/=(<y:1> . <x:0>)'.