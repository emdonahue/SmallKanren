probability
expectations: aModel given: aGoal	
		^ ((self new  
		query: aGoal query allButFirst asCons;
		stream: (aGoal run: SKSubstitution new model: aModel))
			runStates collect: [ :s | s pseudocounts ]) sum.