scoring
scoreMergedBranch: aBranch withTree: aTree
	"This scores a partial State after (temporarily) merging the existing tree with the current branch to produce a trace of the computation so far. Returns a number valued score to an Incomplete stream."
	^ self scoreTree: (self mergeBranch: aBranch withTree: aTree)