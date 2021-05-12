tests
testRunEager
	self assert: [ :v | v match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]] asGoal run equals: (1 cons: 2) cons cons.
	self assert: [ :v | v match2: #(_ | _) o: [ :a :d | (a === 1 & (d === 2)) | (a === 1 & (d === 2)) ]] asGoal run equals: ((1 cons: 2) cons cons: ((1 cons: 2) cons) cons).