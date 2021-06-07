tests - pattern
testPreemptiveFail
	self assert: ((x match: #(1 _) o: [ :a]) & (x match: #(2 _) o: [ :a]) run: s runtime: r) asAnswer equals: failure.