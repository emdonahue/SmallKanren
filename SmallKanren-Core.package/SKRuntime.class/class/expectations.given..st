instance creation
expectations: aModel given: aGoal	
		^ ((self new  
		query: aGoal query allButFirst asCons;
		stream: (aGoal run: SKState new model: aModel))
			runStates collect: [ :s | s pseudoCounts ]) sum.