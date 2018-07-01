debugging
queriesInProgress
	"Returns a Bag of all the current partial reifications of the query variables, to see what kinds of reifications the search is spending its time on."

	^ stream reificationsOf: queryVars in: Bag new.