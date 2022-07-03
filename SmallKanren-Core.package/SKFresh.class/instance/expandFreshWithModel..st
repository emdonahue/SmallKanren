inspecting
expandFreshWithModel: aModel
	^ (block valueWithArguments:
		(self query allButFirst copyWithFirst: aModel)) asGoal.