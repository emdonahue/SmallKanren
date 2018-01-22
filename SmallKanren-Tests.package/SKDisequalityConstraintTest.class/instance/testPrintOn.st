printing
testPrintOn
	self assert: (x =/= 1) asConstraint asString equals: ('(<x:{1}>=/=1)' format: {x hash}).
	self assert: ((x cons: y cons) =/= (1 cons: 2 cons)) asConstraint asString equals: ('((<y:{2}>=/=2)&(<x:{1}>=/=1))'  format: {x hash .y hash}).
	self assert: (x =/= 1 , (y =/= 2)) asString equals: ('((<y:{2}>=/=2) | (<x:{1}>=/=1))' format: {x hash. y hash}).
	self assert: ((x cons: y cons) =/= (1 cons: 2 cons) , (x =/= 1)) asString equals: ('((<x:{1}>=/=1) | ((<y:{2}>=/=2)&(<x:{1}>=/=1)))' format: {x hash. y hash}).
	self assert: (x =/= 1) asString equals: ('<x:{1}>=/=1' format: {x hash}).
	self assert: ((x cons: y cons) =/= (y cons: x cons)) asString equals: ('(<x:{1}> . <y:{2}>)=/=(<y:{2}> . <x:{1}>)' format: {x hash. y hash}).