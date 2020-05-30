parsing
eval: prog env: env o: out
	^ self
		eval: prog
		env: env
		o: out
		length: 1