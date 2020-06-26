constraints
extendPackage: var with: constraint type: type store: env o: nextEnv
	^ [ :sub :store :nextStore | 
	env === (sub cons: store cons) & (nextEnv === (sub cons: nextStore cons))
		&
			(self
				extend: var
				with: constraint
				type: type
				store: store
				o: nextStore) ]