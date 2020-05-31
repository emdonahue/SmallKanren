interpreting
unifyVar: a var: b in: env o: nextEnv
	^ (self not: a equals: b type: self vars)
		&
			(self
				extendPackage: a
				with: b
				in: env
				o: nextEnv)