running
run: aState history: aHistory heuristic: aHeuristic
	"Since conjunctions are guraanteed to be simple and return a State, run them first using the simpler #run method that does not log its trace, and then bind the rusilt, if any, to the branch containing the disjunction."

	^ (conjunctions run: aState) bind: disjunction history: aHistory heuristic: aHeuristic