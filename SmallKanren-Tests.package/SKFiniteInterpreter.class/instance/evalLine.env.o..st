interpreting
evalLine: line env: env o: nextEnv
	^ [ :op :args :arg1 :arg2 | 
	line === (op cons: args)
		&
			(args === (arg1 cons: arg2 cons)
				&
					((op === #==
						&
							(self
								unify: arg1
								with: arg2
								in: env
								o: nextEnv)) |
								
								((op === #typeo
								&
									(self
										extendPackage: arg1
										with: arg2
										type: #typeo
										store: env
										o: nextEnv))) )) ] asGoal