instance creation
fromFresh: aGoal
	^ self new 
		query: aGoal query asCons;
		stream: (aGoal run: SKState new).