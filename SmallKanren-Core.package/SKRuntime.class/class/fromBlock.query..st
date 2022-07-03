instance creation
fromBlock: aBlock query: aQuery
	"Used by fresh to create the main runtime for a program."
	^ self new query: aQuery asCons; 
		goal: [aBlock valueWithArguments: aQuery asCons] asGoal.