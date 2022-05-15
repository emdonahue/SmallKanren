instance creation
fromPpl: aGoal model: aModel	
		^ self new  
		query: aGoal query allButFirst asCons;
		stream: (aGoal run: SKState new model: aModel).