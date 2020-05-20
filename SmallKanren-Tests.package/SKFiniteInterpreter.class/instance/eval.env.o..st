parsing
eval: prog env: env o: out
	^ prog === Cons empty & (out === env)
		| [ :first :rest :nextEnv | 
			prog === (first cons: rest)
				& (self evalLine: first env: env o: nextEnv)
				& (self eval: rest env: nextEnv o: out) ]