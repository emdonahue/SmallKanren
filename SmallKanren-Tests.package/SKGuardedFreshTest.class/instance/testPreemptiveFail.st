tests
testPreemptiveFail
	self assert: ((x match2: #(1 _) o: [ :a :d | ]) & (x match2: #(2 _) o: [ :a :d | ]) run: s runtime: r) step equals: failure.