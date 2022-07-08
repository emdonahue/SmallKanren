tests
testTableFree
	| r as |
	r := [ :x | self path: #a to: x ] asGoal runtime.
	as := r run.
	self assert: as size equals: 3.
	self assert: (as includes: #a cons).
	self assert: (as includes: #b cons).
	self assert: (as includes: #d cons).