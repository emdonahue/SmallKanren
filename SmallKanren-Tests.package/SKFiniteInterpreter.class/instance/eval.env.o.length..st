interpreting
eval: prog env: env o: out length: l
	l = 0
		ifTrue: [ ^ prog === Cons empty & (env === out) ].
	^ prog === Cons empty & (out === env)
		| [ :first :rest :nextEnv | 
			prog === (first cons: rest)
				& (self evalLine: first env: env o: nextEnv)
				&
					(self
						eval: rest
						env: nextEnv
						o: out
						length: l - 1) ]