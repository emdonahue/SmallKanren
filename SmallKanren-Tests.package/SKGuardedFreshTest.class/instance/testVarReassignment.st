tests - pattern
testVarReassignment
	self assert: (({x===y.x match: #(car . _) o: [ :d | d === 2 ]} asGoal run: SKState new runtime: r) unify: y with: (#notCar cons: 2)) isFailure.
	self assert: (({x match: #(car . _) o: [ :d | d === 2 ]. x===y.} asGoal run: SKState new runtime: r) unify: y with: (#notCar cons: 2)) isFailure.