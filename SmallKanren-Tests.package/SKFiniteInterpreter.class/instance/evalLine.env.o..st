parsing
evalLine: line env: env o: nextEnv
	^ [ :op :arg1 :arg2 | 
	line === (op cons: arg1 cons: arg2 cons)
		&
			(op === #==
				&
					(self
						unify: arg1
						with: arg2
						in: env
						o: nextEnv)) ]