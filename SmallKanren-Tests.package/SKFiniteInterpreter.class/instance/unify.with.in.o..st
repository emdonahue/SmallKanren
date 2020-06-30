unify
unify: arg1 with: arg2 in: env o: nextEnv
	^ self unify: arg1 with: arg2 in: env o: nextEnv depth: self listDepth length: self listLength