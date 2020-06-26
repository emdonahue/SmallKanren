eval
eval: prog o: out
	^ self
		eval: prog
		env:
			self env
		o: out