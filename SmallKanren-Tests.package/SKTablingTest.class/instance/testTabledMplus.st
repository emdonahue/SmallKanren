consumer
testTabledMplus
	| r |
	r := [[ :a :b | a === 1 & (b === 2) & ((self path: a to: b) | (self path: a to: b)) ] ]
		asGoal runtime.
	r tables
		at: #path
		put:
			(Dictionary
				with: #(1 2) asConsTree -> (#(#(1 2) #(1 2) #(1 2)) asConsTree collect: [ :e | SKTableCacheEntry new argv: e ])).
	self assert: r run size equals: 6