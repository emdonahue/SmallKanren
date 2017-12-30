subclassresponsibility
splitBranch: aHistory
	"When the Heuristic encounters a conjunction, the left goal gets the current branch as its history, and the right goal gets a new branch derived from the history up to this point (before the branches diverge). Usually this is used to reset the branch to the initialHistory to avoid double counting the branches' shared history."
	self subclassResponsibility 