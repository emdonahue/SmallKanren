probability
fromPpl: aGoal model: aModel	
		^ self new  
		query: aGoal query allButFirst asCons;
		stream: (aGoal run: SKSubstitution new model: aModel).