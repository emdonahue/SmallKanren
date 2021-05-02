tmp
andDisunify: aSKDisequalityGoal
	^ self class new var: var; constraint:
		(SKConstraint dis: (aSKDisequalityGoal constraint left cons: constraint left)
		equals: (aSKDisequalityGoal constraint right cons: constraint right))