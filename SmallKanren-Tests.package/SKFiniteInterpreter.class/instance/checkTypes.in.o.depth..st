accessing
checkTypes: types in: env o: out depth: depth
	depth = 0
		ifTrue: [ ^ env === out ].
	^ [ :var :const :rest :val | 
	types === Cons empty & (env === out)
		|
			((self walkVar: var env: env o: val)
				& (((var cons: const) cons: rest) === types)
				&
					((self is: val type: const)
						&
							(self
								checkTypes: rest
								in: env
								o: out
								depth: depth - 1)
						| ((self not: val type: const) & (out === Cons empty)))) ]
		asGoal