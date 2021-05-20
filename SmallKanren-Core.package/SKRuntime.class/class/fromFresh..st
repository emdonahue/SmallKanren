instance creation
fromFresh: aGoal
	^ self new 
		queryVars: aGoal query asCons;
		stream: (aGoal run: SKState new).