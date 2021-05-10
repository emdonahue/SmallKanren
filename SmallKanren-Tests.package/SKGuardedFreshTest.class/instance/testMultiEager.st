tests
testMultiEager
	| st |
	st := ((((x match2: #(_ | _) o: [ :a :d | a === 1 ])
			& (x match2: #(_ | _) o: [ :a :d | d === 2 ])) run: s runtime: r) 
		eager: r).
	self assert: st => x equals: (1 cons: 2).
	self assert: st constraints isEmpty.