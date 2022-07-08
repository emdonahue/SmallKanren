tests
testPath
	self assert: (self path: #a to: #b) succeeds.
	self assert: (self path: #a to: #a) succeeds.
	self assert: (self path: #a to: #d) succeeds.
	self assert: (self path: #d to: #a) fails.
	self assert: (self path: #d to: #d) fails.