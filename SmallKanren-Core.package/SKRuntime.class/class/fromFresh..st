instance creation
fromFresh: aGoal
	| query |
	query := aGoal query asCons.
	^ self new 
		query: query;
		stream: ([aGoal expandFresh: query] asGoal run: SKState new).