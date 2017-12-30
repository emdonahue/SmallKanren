disequality
andDisunify: aSKDisequalityGoal
	^ self class new
		left: (aSKDisequalityGoal left cons: left);
		right: (aSKDisequalityGoal right cons: right)