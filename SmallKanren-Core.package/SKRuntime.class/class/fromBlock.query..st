instance creation
fromBlock: aBlock query: aQuery
	"Used by fresh to create the main runtime for a program."
	^ (self fromGoal: [aBlock valueWithArguments: aQuery asCons] asGoal) query: aQuery asCons.