tests
testTableDisjoined
	| r as |
	r := [ :x | (self path: #a to: x) | (self path: #a to: x) ] asGoal runtime.
	as := r runList.
	self assert: as size equals: 6.
	self assert: (as includes: #a cons).
	self assert: (as includes: #b cons).
	self assert: (as includes: #d cons).