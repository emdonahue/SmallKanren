tests-modes
testPathPlan
	<todo>
	"uncomment this test when tabling allows ground inputs (probably make it a new test)"
	self assert: (self path: #a to: #b plan: #b cons) succeeds.
	"self assert: (self path: #a to: #b plan: (#b cons: #a cons: #b cons)) succeeds."
	self assert: (self path: #a to: #a plan: Cons empty) succeeds.
	self assert: (self path: #a to: #d plan: (#b cons: #d cons)) succeeds.
	self assert: (self path: #d to: #a plan: SKVar new) fails.