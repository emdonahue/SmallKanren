interpreting
isList: x depth: d length: l
	(d = 0 or: l = 0)
		ifTrue: [ ^ SKGoal fail ].
	^ [ :a :b | 
	x === (a cons: b)
		&
			((self isList: a depth: d - 1 length: l)
				| (self is: a in: self nonLists))
		&
			((self isList: b depth: d length: l - 1)
				| (self is: b in: self nonLists)) ] asGoal