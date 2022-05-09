probability
maximize
	^ self asSpace inject: SKJointDistribution new into: [ :joint :state | joint + state jointDistribution ].