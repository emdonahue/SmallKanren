unify
unifyList: a list: b in: env o: nextEnv depth: depth length: length
	(depth = 0 or: length = 0)
		ifTrue: [ ^ SKGoal fail ].
	^ [ :c :d :e :f :nenv | 
	{a === (c cons: d) & (b === (e cons: f)) & (self is: c in: self vars)
		. (self is: e in: self values)
		.
			(self unify: c with: e in: env o: nenv depth: depth - 1 length: length)
		. (self is: d in: self vars) & (self is: f in: self values)
		.
			(self
				unify: d
				with: f
				in: nenv
				o: nextEnv
				depth: depth
				length: length - 1)} ] asGoal