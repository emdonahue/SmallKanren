tests - pattern
testVarReassignment
	self assert: (({x===y.x match: #(car . _) o: [ :d | d === 2 ]} asGoal run: SKSubstitution new runtime: r) unify: y with: (#notCar cons: 2)) isFailure.
	self assert: (({x match: #(car . _) o: [ :d | d === 2 ]. x===y.} asGoal run: SKSubstitution new runtime: r) unify: y with: (#notCar cons: 2)) isFailure.