interpreting
deprecatedUnifyList: a list: b in: env o: nextEnv depth: depth length: length
	depth = 0
		ifTrue: [ ^ SKGoal fail ].
	length = 0
		ifTrue: [ ^ a === Cons empty & (b === Cons empty) ].
	^ [ :c :d :e :f :nenv | 
	a === (c cons: d) & (b === (e cons: f))
		&
			(self
				unify: c
				with: e
				in: env
				o: nenv
				depth: depth - 1
				length: length)
		&
			(self
				unify: d
				with: f
				in: nenv
				o: nextEnv
				depth: depth
				length: length - 1) ] asGoal