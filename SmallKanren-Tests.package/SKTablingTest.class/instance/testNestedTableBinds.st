tests
testNestedTableBinds
	| r as y |
	y := SKVar new.
	r := [ :x | (y carCdro: [ :a :d | a === 1 & d isEmptyo ]) & (self path: #a to: x) & (self path: #a to: x) ] asGoal runtime.
	as := r runList.
	self assert: as size equals: 3.
	self assert: (as includes: #a cons).
	self assert: (as includes: #b cons).
	self assert: (as includes: #d cons).