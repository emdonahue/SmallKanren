eval
eval: prog env: env o: out length: l
	l = 0
		ifTrue: [ ^ prog === Cons empty & (self checkConstraints: env o: out) ].
	^ (prog === Cons empty & (self checkConstraints: env o: out) )
		| [ :first :rest :nextEnv | 
			prog === (first cons: rest)
				& (self evalLine: first env: env o: nextEnv)
				&
					(self
						eval: rest
						env: nextEnv
						o: out
						length: l - 1) ]