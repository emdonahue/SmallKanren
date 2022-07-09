tests-pathing
testPathPlan
	self assert: (self path: #a to: #b plan: #b cons) succeeds.
	self assert: (self path: #a to: #b plan: (#b cons: #a cons: #b cons)) fails. "Tabling enforces a shorter path."
	self assert: (self path: #a to: #a plan: Cons empty) succeeds.
	self assert: (self path: #a to: #d plan: (#b cons: #d cons)) succeeds.
	self assert: (self path: #d to: #a plan: SKVar new) fails.