parsing
unifyVar: a val: b in: env o: nextEnv
	^ [ :var :val | 
	(self
		a: a
		b: b
		var: var
		val: val)
		&
			(self
				extendPackage: var
				with: val
				in: env
				o: nextEnv) ]