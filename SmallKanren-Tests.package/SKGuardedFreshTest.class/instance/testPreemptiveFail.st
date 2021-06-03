tests - pattern
testPreemptiveFail
	self assert: ((x match2: #(1 _) o: [ :a]) & (x match2: #(2 _) o: [ :a]) run: s runtime: r) asAnswer equals: failure.