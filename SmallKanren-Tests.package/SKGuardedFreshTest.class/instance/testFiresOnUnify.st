tests - pattern
testFiresOnUnify
	self assert: (((x match: #(car . _) o: [ :d | d === 2 ]) run: SKSubstitution new runtime: r) unify: x with: (#notCar cons: 2)) equals: failure.
	self assert: (((x car: #car cdro: [ :d | d === 2 ]) run: SKSubstitution new runtime: r) unify: x with: (#notCar cons: 2)) equals: failure.
	self assert: ((((x match: #(car . _) o: [ :d | d === 2 ]) & (x match: #(car . _) o: [ :d | d === 2 ])) run: SKSubstitution new runtime: r) unify: x with: (#notCar cons: 2)) equals: failure.