tests
testTableConjoined
	| r t as |
	r := [ :x | (self path: #a to: x) & (self path: #a to: x) ] asGoal runner.
	as := r run.
	self assert: as size equals: 3.
	self assert: (as includes: #a cons).
	self assert: (as includes: #b cons).
	self assert: (as includes: #d cons).